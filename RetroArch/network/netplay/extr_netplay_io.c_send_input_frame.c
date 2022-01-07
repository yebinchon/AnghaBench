
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct netplay_connection {scalar_t__ mode; int fd; int send_packet_buffer; scalar_t__ active; } ;
struct delta_frame {size_t frame; TYPE_2__** real_input; } ;
struct TYPE_6__ {size_t* client_devices; size_t connections_size; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;
typedef TYPE_2__* netplay_input_state_t ;
struct TYPE_7__ {size_t client_num; size_t size; size_t* data; struct TYPE_7__* next; int used; } ;


 int BUFSZ ;
 size_t MAX_CLIENTS ;
 size_t MAX_INPUT_DEVICES ;
 size_t NETPLAY_CMD_INPUT ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 scalar_t__ NETPLAY_CONNECTION_PLAYING ;
 int RARCH_LOG (char*,unsigned int) ;
 size_t htonl (size_t) ;
 int netplay_hangup (TYPE_1__*,struct netplay_connection*) ;
 int netplay_send (int *,int ,size_t*,size_t) ;
 int print_state (TYPE_1__*) ;

__attribute__((used)) static bool send_input_frame(netplay_t *netplay, struct delta_frame *dframe,
      struct netplay_connection *only, struct netplay_connection *except,
      uint32_t client_num, bool slave)
{

   uint32_t buffer[16], devices, device;
   size_t bufused, i;


   bufused = 4;
   buffer[0] = htonl(NETPLAY_CMD_INPUT);
   buffer[2] = htonl(dframe->frame);
   buffer[3] = htonl(client_num);


   devices = netplay->client_devices[client_num];
   for (device = 0; device < MAX_INPUT_DEVICES; device++)
   {
      netplay_input_state_t istate;
      if (!(devices & (1<<device)))
         continue;
      istate = dframe->real_input[device];
      while (istate && (!istate->used || istate->client_num != (slave?MAX_CLIENTS:client_num)))
         istate = istate->next;
      if (!istate)
         continue;
      if (bufused + istate->size >= 16)
         continue;
      for (i = 0; i < istate->size; i++)
         buffer[bufused+i] = htonl(istate->data[i]);
      bufused += istate->size;
   }
   buffer[1] = htonl((bufused-2) * sizeof(uint32_t));






   if (only)
   {
      if (!netplay_send(&only->send_packet_buffer, only->fd, buffer, bufused*sizeof(uint32_t)))
      {
         netplay_hangup(netplay, only);
         return 0;
      }
   }
   else
   {
      for (i = 0; i < netplay->connections_size; i++)
      {
         struct netplay_connection *connection = &netplay->connections[i];
         if (connection == except)
            continue;
         if (connection->active &&
             connection->mode >= NETPLAY_CONNECTION_CONNECTED &&
             (connection->mode != NETPLAY_CONNECTION_PLAYING ||
              i+1 != client_num))
         {
            if (!netplay_send(&connection->send_packet_buffer, connection->fd,
                  buffer, bufused*sizeof(uint32_t)))
               netplay_hangup(netplay, connection);
         }
      }
   }

   return 1;

}
