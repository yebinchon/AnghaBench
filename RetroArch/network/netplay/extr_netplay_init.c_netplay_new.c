
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct retro_callbacks {int dummy; } ;
struct TYPE_10__ {int fd; void* mode; } ;
struct TYPE_9__ {int listen_fd; int is_server; int is_connected; int nat_traversal; int stateless_mode; int check_frames; int crc_validity_checked; int crcs_valid; int connections_size; int* config_devices; int have_updown_device; TYPE_5__* connections; void* self_mode; int nick; TYPE_5__ one_connection; int quirks; struct retro_callbacks cbs; int tcp_port; } ;
typedef TYPE_1__ netplay_t ;


 unsigned int MAX_INPUT_DEVICES ;
 void* NETPLAY_CONNECTION_INIT ;
 void* NETPLAY_CONNECTION_NONE ;
 void* NETPLAY_CONNECTION_SPECTATING ;
 char const* RARCH_DEFAULT_NICK ;
 int RARCH_WARN (char*,unsigned int) ;
 int RETRO_DEVICE_KEYBOARD ;
 int RETRO_DEVICE_MASK ;
 int RETRO_DEVICE_NONE ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int init_socket (TYPE_1__*,void*,char const*,int ) ;
 int input_config_get_device (unsigned int) ;
 int netplay_expected_input_size (TYPE_1__*,int) ;
 int netplay_handshake_init_send (TYPE_1__*,TYPE_5__*) ;
 int netplay_init_buffers (TYPE_1__*) ;
 int netplay_key_hton_init () ;
 int socket_close (int) ;
 int socket_nonblock (int) ;
 int strlcpy (int ,char const*,int) ;

netplay_t *netplay_new(void *direct_host, const char *server, uint16_t port,
   bool stateless_mode, int check_frames,
   const struct retro_callbacks *cb, bool nat_traversal, const char *nick,
   uint64_t quirks)
{
   netplay_t *netplay = (netplay_t*)calloc(1, sizeof(*netplay));
   if (!netplay)
      return ((void*)0);

   netplay->listen_fd = -1;
   netplay->tcp_port = port;
   netplay->cbs = *cb;
   netplay->is_server = (direct_host == ((void*)0) && server == ((void*)0));
   netplay->is_connected = 0;;
   netplay->nat_traversal = netplay->is_server ? nat_traversal : 0;
   netplay->stateless_mode = stateless_mode;
   netplay->check_frames = check_frames;
   netplay->crc_validity_checked = 0;
   netplay->crcs_valid = 1;
   netplay->quirks = quirks;
   netplay->self_mode = netplay->is_server ?
                                NETPLAY_CONNECTION_SPECTATING :
                                NETPLAY_CONNECTION_NONE;

   if (netplay->is_server)
   {
      netplay->connections = ((void*)0);
      netplay->connections_size = 0;
   }
   else
   {
      netplay->connections = &netplay->one_connection;
      netplay->connections_size = 1;
      netplay->connections[0].fd = -1;
   }

   strlcpy(netplay->nick, nick[0]
         ? nick : RARCH_DEFAULT_NICK,
         sizeof(netplay->nick));

   if (!init_socket(netplay, direct_host, server, port))
   {
      free(netplay);
      return ((void*)0);
   }

   if (!netplay_init_buffers(netplay))
   {
      free(netplay);
      return ((void*)0);
   }

   if (netplay->is_server)
   {

      unsigned i;
      for (i = 0; i < MAX_INPUT_DEVICES; i++)
      {
         uint32_t dtype = input_config_get_device(i);
         netplay->config_devices[i] = dtype;
         if ((dtype&RETRO_DEVICE_MASK) == RETRO_DEVICE_KEYBOARD)
         {
            netplay->have_updown_device = 1;
            netplay_key_hton_init();
         }
         if (dtype != RETRO_DEVICE_NONE && !netplay_expected_input_size(netplay, 1<<i))
            RARCH_WARN("Netplay does not support input device %u\n", i+1);
      }
   }
   else
   {

      netplay_handshake_init_send(netplay, &netplay->connections[0]);

      netplay->connections[0].mode = NETPLAY_CONNECTION_INIT;
      netplay->self_mode = NETPLAY_CONNECTION_INIT;
   }



   if (netplay->is_server)
   {
      if (!socket_nonblock(netplay->listen_fd))
         goto error;
   }
   else
   {
      if (!socket_nonblock(netplay->connections[0].fd))
         goto error;
   }

   return netplay;

error:
   if (netplay->listen_fd >= 0)
      socket_close(netplay->listen_fd);

   if (netplay->connections && netplay->connections[0].fd >= 0)
      socket_close(netplay->connections[0].fd);

   free(netplay);
   return ((void*)0);
}
