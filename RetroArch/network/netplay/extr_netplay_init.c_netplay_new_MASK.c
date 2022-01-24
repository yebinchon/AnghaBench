#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct retro_callbacks {int dummy; } ;
struct TYPE_10__ {int fd; void* mode; } ;
struct TYPE_9__ {int listen_fd; int is_server; int is_connected; int nat_traversal; int stateless_mode; int check_frames; int crc_validity_checked; int crcs_valid; int connections_size; int* config_devices; int have_updown_device; TYPE_5__* connections; void* self_mode; int /*<<< orphan*/  nick; TYPE_5__ one_connection; int /*<<< orphan*/  quirks; struct retro_callbacks cbs; int /*<<< orphan*/  tcp_port; } ;
typedef  TYPE_1__ netplay_t ;

/* Variables and functions */
 unsigned int MAX_INPUT_DEVICES ; 
 void* NETPLAY_CONNECTION_INIT ; 
 void* NETPLAY_CONNECTION_NONE ; 
 void* NETPLAY_CONNECTION_SPECTATING ; 
 char const* RARCH_DEFAULT_NICK ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int RETRO_DEVICE_KEYBOARD ; 
 int RETRO_DEVICE_MASK ; 
 int RETRO_DEVICE_NONE ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 

netplay_t *FUNC12(void *direct_host, const char *server, uint16_t port,
   bool stateless_mode, int check_frames,
   const struct retro_callbacks *cb, bool nat_traversal, const char *nick,
   uint64_t quirks)
{
   netplay_t *netplay = (netplay_t*)FUNC1(1, sizeof(*netplay));
   if (!netplay)
      return NULL;

   netplay->listen_fd            = -1;
   netplay->tcp_port             = port;
   netplay->cbs                  = *cb;
   netplay->is_server            = (direct_host == NULL && server == NULL);
   netplay->is_connected         = false;;
   netplay->nat_traversal        = netplay->is_server ? nat_traversal : false;
   netplay->stateless_mode       = stateless_mode;
   netplay->check_frames         = check_frames;
   netplay->crc_validity_checked = false;
   netplay->crcs_valid           = true;
   netplay->quirks               = quirks;
   netplay->self_mode            = netplay->is_server ?
                                NETPLAY_CONNECTION_SPECTATING :
                                NETPLAY_CONNECTION_NONE;

   if (netplay->is_server)
   {
      netplay->connections       = NULL;
      netplay->connections_size  = 0;
   }
   else
   {
      netplay->connections       = &netplay->one_connection;
      netplay->connections_size  = 1;
      netplay->connections[0].fd = -1;
   }

   FUNC11(netplay->nick, nick[0]
         ? nick : RARCH_DEFAULT_NICK,
         sizeof(netplay->nick));

   if (!FUNC3(netplay, direct_host, server, port))
   {
      FUNC2(netplay);
      return NULL;
   }

   if (!FUNC7(netplay))
   {
      FUNC2(netplay);
      return NULL;
   }

   if (netplay->is_server)
   {
      /* Clients get device info from the server */
      unsigned i;
      for (i = 0; i < MAX_INPUT_DEVICES; i++)
      {
         uint32_t dtype = FUNC4(i);
         netplay->config_devices[i] = dtype;
         if ((dtype&RETRO_DEVICE_MASK) == RETRO_DEVICE_KEYBOARD)
         {
            netplay->have_updown_device = true;
            FUNC8();
         }
         if (dtype != RETRO_DEVICE_NONE && !FUNC5(netplay, 1<<i))
            FUNC0("Netplay does not support input device %u\n", i+1);
      }
   }
   else
   {
      /* Start our handshake */
      FUNC6(netplay, &netplay->connections[0]);

      netplay->connections[0].mode = NETPLAY_CONNECTION_INIT;
      netplay->self_mode           = NETPLAY_CONNECTION_INIT;
   }

   /* FIXME: Not really the right place to do this,
    * socket initialization needs to be fixed in general. */
   if (netplay->is_server)
   {
      if (!FUNC10(netplay->listen_fd))
         goto error;
   }
   else
   {
      if (!FUNC10(netplay->connections[0].fd))
         goto error;
   }

   return netplay;

error:
   if (netplay->listen_fd >= 0)
      FUNC9(netplay->listen_fd);

   if (netplay->connections && netplay->connections[0].fd >= 0)
      FUNC9(netplay->connections[0].fd);

   FUNC2(netplay);
   return NULL;
}