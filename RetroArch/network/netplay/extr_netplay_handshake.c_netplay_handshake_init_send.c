
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct netplay_connection {int salt; int fd; int send_packet_buffer; } ;
struct TYPE_6__ {scalar_t__* netplay_spectate_password; scalar_t__* netplay_password; } ;
struct TYPE_7__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {scalar_t__ is_server; } ;
typedef TYPE_3__ netplay_t ;
typedef int header ;


 int NETPLAY_COMPRESSION_SUPPORTED ;
 int NETPLAY_PROTOCOL_VERSION ;
 TYPE_2__* config_get_ptr () ;
 scalar_t__ htonl (int) ;
 int netplay_impl_magic () ;
 int netplay_magic ;
 int netplay_platform_magic () ;
 int netplay_send (int *,int ,scalar_t__*,int) ;
 int netplay_send_flush (int *,int ,int) ;
 int simple_rand_next ;
 int simple_rand_uint32 () ;
 int simple_srand (unsigned int) ;
 scalar_t__ time (int *) ;

bool netplay_handshake_init_send(netplay_t *netplay,
   struct netplay_connection *connection)
{
   uint32_t header[6];
   settings_t *settings = config_get_ptr();

   header[0] = htonl(netplay_magic);
   header[1] = htonl(netplay_platform_magic());
   header[2] = htonl(NETPLAY_COMPRESSION_SUPPORTED);
   header[3] = 0;
   header[4] = htonl(NETPLAY_PROTOCOL_VERSION);
   header[5] = htonl(netplay_impl_magic());

   if (netplay->is_server &&
       (settings->paths.netplay_password[0] ||
        settings->paths.netplay_spectate_password[0]))
   {

      if (simple_rand_next == 1)
         simple_srand((unsigned int) time(((void*)0)));
      connection->salt = simple_rand_uint32();
      if (connection->salt == 0)
         connection->salt = 1;
      header[3] = htonl(connection->salt);
   }
   else
   {
      header[3] = htonl(0);
   }

   if (!netplay_send(&connection->send_packet_buffer, connection->fd, header,
         sizeof(header)) ||
       !netplay_send_flush(&connection->send_packet_buffer, connection->fd, 0))
      return 0;

   return 1;
}
