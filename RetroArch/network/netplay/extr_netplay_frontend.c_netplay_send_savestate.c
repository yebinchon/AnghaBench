
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct netplay_connection {scalar_t__ mode; scalar_t__ compression_supported; int fd; int send_packet_buffer; int active; } ;
struct compression_transcoder {int compression_stream; TYPE_1__* compression_backend; } ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ data_const; } ;
typedef TYPE_2__ retro_ctx_serialize_info_t ;
struct TYPE_9__ {scalar_t__* zbuffer; size_t connections_size; scalar_t__ run_frame_count; struct netplay_connection* connections; int zbuffer_size; } ;
typedef TYPE_3__ netplay_t ;
typedef int header ;
struct TYPE_7__ {int (* trans ) (int ,int,scalar_t__*,scalar_t__*,int *) ;int (* set_out ) (int ,scalar_t__*,scalar_t__) ;int (* set_in ) (int ,int const*,scalar_t__) ;} ;


 scalar_t__ NETPLAY_CMD_LOAD_SAVESTATE ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 scalar_t__ htonl (scalar_t__) ;
 int netplay_hangup (TYPE_3__*,struct netplay_connection*) ;
 int netplay_send (int *,int ,scalar_t__*,scalar_t__) ;
 int stub1 (int ,int const*,scalar_t__) ;
 int stub2 (int ,scalar_t__*,scalar_t__) ;
 int stub3 (int ,int,scalar_t__*,scalar_t__*,int *) ;

void netplay_send_savestate(netplay_t *netplay,
   retro_ctx_serialize_info_t *serial_info, uint32_t cx,
   struct compression_transcoder *z)
{
   uint32_t header[4];
   uint32_t rd, wn;
   size_t i;


   z->compression_backend->set_in(z->compression_stream,
      (const uint8_t*)serial_info->data_const, (uint32_t)serial_info->size);
   z->compression_backend->set_out(z->compression_stream,
      netplay->zbuffer, (uint32_t)netplay->zbuffer_size);
   if (!z->compression_backend->trans(z->compression_stream, 1, &rd,
         &wn, ((void*)0)))
   {

      for (i = 0; i < netplay->connections_size; i++)
         netplay_hangup(netplay, &netplay->connections[i]);
      return;
   }


   header[0] = htonl(NETPLAY_CMD_LOAD_SAVESTATE);
   header[1] = htonl(wn + 2*sizeof(uint32_t));
   header[2] = htonl(netplay->run_frame_count);
   header[3] = htonl(serial_info->size);

   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (!connection->active ||
          connection->mode < NETPLAY_CONNECTION_CONNECTED ||
          connection->compression_supported != cx) continue;

      if (!netplay_send(&connection->send_packet_buffer, connection->fd, header,
            sizeof(header)) ||
          !netplay_send(&connection->send_packet_buffer, connection->fd,
            netplay->zbuffer, wn))
         netplay_hangup(netplay, connection);
   }
}
