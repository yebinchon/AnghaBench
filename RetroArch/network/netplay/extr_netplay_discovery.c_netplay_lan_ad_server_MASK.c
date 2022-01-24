#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  their_addr ;
struct timeval {int /*<<< orphan*/  member_0; } ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct retro_system_info {char* library_name; char* library_version; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  member_0; } ;
struct ad_packet {int dummy; } ;
typedef  int ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  s ;
struct TYPE_14__ {scalar_t__ tcp_port; char* nick; } ;
typedef  TYPE_3__ netplay_t ;
struct TYPE_15__ {unsigned int size; TYPE_2__* entries; } ;
typedef  TYPE_4__ net_ifinfo_t ;
typedef  int /*<<< orphan*/  frontend ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_16__ {char* address; char* content; char* subsystem_name; char* retroarch_version; char* nick; char* frontend; char* core; char* core_version; char* content_crc; void* port; void* protocol_version; } ;
struct TYPE_13__ {char* host; } ;
struct TYPE_12__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NETPLAY_HOST_LONGSTR_LEN ; 
 int NETPLAY_HOST_STR_LEN ; 
 scalar_t__ NETPLAY_PROTOCOL_VERSION ; 
 char* PACKAGE_VERSION ; 
 int /*<<< orphan*/  RARCH_DEFAULT_PORT ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  RARCH_PATH_BASENAME ; 
 int /*<<< orphan*/  RARCH_PATH_SUBSYSTEM ; 
 TYPE_8__ ad_packet_buffer ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 scalar_t__ FUNC6 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ lan_ad_server_fd ; 
 scalar_t__ FUNC9 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 scalar_t__ FUNC15 (void*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 char* FUNC17 (char*) ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 struct string_list* FUNC19 () ; 
 scalar_t__ FUNC20 (scalar_t__,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 struct retro_system_info* FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,int) ; 
 scalar_t__ FUNC24 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*,int) ; 
 char* FUNC28 (char*,char) ; 
 scalar_t__ FUNC29 (char*,char*) ; 

bool FUNC30(netplay_t *netplay)
{
/* Todo: implement net_ifinfo and ntohs for consoles */
#ifdef HAVE_NETPLAYDISCOVERY
   fd_set fds;
   int ret;
   struct timeval tmp_tv = {0};
   struct sockaddr their_addr;
   socklen_t addr_size;
   unsigned k = 0;
   char reply_addr[NETPLAY_HOST_STR_LEN], port_str[6];
   struct addrinfo *our_addr, hints = {0};
   struct string_list *subsystem    = path_get_subsystem_list();
   char buf[4096];

   net_ifinfo_t interfaces;

   if (!net_ifinfo_new(&interfaces))
      return false;

   if (lan_ad_server_fd < 0 && !init_lan_ad_server_socket(netplay, RARCH_DEFAULT_PORT))
      return false;

   /* Check for any ad queries */
   while (1)
   {
      FD_ZERO(&fds);
      FD_SET(lan_ad_server_fd, &fds);
      if (socket_select(lan_ad_server_fd + 1, &fds, NULL, NULL, &tmp_tv) <= 0)
         break;
      if (!FD_ISSET(lan_ad_server_fd, &fds))
         break;

      /* Somebody queried, so check that it's valid */
      addr_size = sizeof(their_addr);
      ret       = (int)recvfrom(lan_ad_server_fd, (char*)&ad_packet_buffer,
            sizeof(struct ad_packet), 0, &their_addr, &addr_size);
      if (ret >= (ssize_t) (2 * sizeof(uint32_t)))
      {
         char s[NETPLAY_HOST_STR_LEN];
         uint32_t content_crc         = 0;

         /* Make sure it's a valid query */
         if (memcmp((void *) &ad_packet_buffer, "RANQ", 4))
         {
            RARCH_LOG("[discovery] invalid query\n");
            continue;
         }

         /* For this version */
         if (ntohl(ad_packet_buffer.protocol_version) !=
               NETPLAY_PROTOCOL_VERSION)
         {
            RARCH_LOG("[discovery] invalid protocol version\n");
            continue;
         }

         if (!string_is_empty(ad_packet_buffer.address))
            strlcpy(reply_addr, ad_packet_buffer.address, NETPLAY_HOST_STR_LEN);

         for (k = 0; k < interfaces.size; k++)
         {
            char *p;
            char sub[NETPLAY_HOST_STR_LEN];
            char frontend[NETPLAY_HOST_STR_LEN];
            netplay_get_architecture(frontend, sizeof(frontend));

            p=strrchr(reply_addr,'.');
            if (p)
            {
               strlcpy(sub, reply_addr, p - reply_addr + 1);
               if (strstr(interfaces.entries[k].host, sub) &&
                  !strstr(interfaces.entries[k].host, "127.0.0.1"))
               {
                  struct retro_system_info *info = runloop_get_libretro_system_info();

                  RARCH_LOG ("[discovery] query received on common interface: %s/%s (theirs / ours) \n",
                     reply_addr, interfaces.entries[k].host);

                  /* Now build our response */
                  buf[0] = '\0';
                  content_crc = content_get_crc();

                  memset(&ad_packet_buffer, 0, sizeof(struct ad_packet));
                  memcpy(&ad_packet_buffer, "RANS", 4);

                  if (subsystem)
                  {
                     unsigned i;

                     for (i = 0; i < subsystem->size; i++)
                     {
                        strlcat(buf, path_basename(subsystem->elems[i].data), NETPLAY_HOST_LONGSTR_LEN);
                        if (i < subsystem->size - 1)
                           strlcat(buf, "|", NETPLAY_HOST_LONGSTR_LEN);
                     }
                     strlcpy(ad_packet_buffer.content, buf,
                        NETPLAY_HOST_LONGSTR_LEN);
                     strlcpy(ad_packet_buffer.subsystem_name, path_get(RARCH_PATH_SUBSYSTEM),
                        NETPLAY_HOST_STR_LEN);
                  }
                  else
                  {
                     strlcpy(ad_packet_buffer.content, !string_is_empty(
                              path_basename(path_get(RARCH_PATH_BASENAME)))
                           ? path_basename(path_get(RARCH_PATH_BASENAME)) : "N/A",
                           NETPLAY_HOST_LONGSTR_LEN);
                     strlcpy(ad_packet_buffer.subsystem_name, "N/A", NETPLAY_HOST_STR_LEN);
                  }

                  strlcpy(ad_packet_buffer.address, interfaces.entries[k].host,
                     NETPLAY_HOST_STR_LEN);
                  ad_packet_buffer.protocol_version =
                     htonl(NETPLAY_PROTOCOL_VERSION);
                  ad_packet_buffer.port = htonl(netplay->tcp_port);
                  strlcpy(ad_packet_buffer.retroarch_version, PACKAGE_VERSION,
                     NETPLAY_HOST_STR_LEN);
                  strlcpy(ad_packet_buffer.nick, netplay->nick, NETPLAY_HOST_STR_LEN);
                  strlcpy(ad_packet_buffer.frontend, frontend, NETPLAY_HOST_STR_LEN);

                  if (info)
                  {
                     strlcpy(ad_packet_buffer.core, info->library_name,
                        NETPLAY_HOST_STR_LEN);
                     strlcpy(ad_packet_buffer.core_version, info->library_version,
                        NETPLAY_HOST_STR_LEN);
                  }

                  snprintf(s, sizeof(s), "%d", content_crc);
                  strlcpy(ad_packet_buffer.content_crc, s,
                     NETPLAY_HOST_STR_LEN);

                  /* Build up the destination address*/
                  snprintf(port_str, 6, "%hu", ntohs(((struct sockaddr_in*)(&their_addr))->sin_port));
                  if (getaddrinfo_retro(reply_addr, port_str, &hints, &our_addr) < 0)
                     continue;

                  RARCH_LOG ("[discovery] sending reply to %s \n", reply_addr);

                  /* And send it */
                  sendto(lan_ad_server_fd, (const char*)&ad_packet_buffer,
                        sizeof(struct ad_packet), 0, our_addr->ai_addr, our_addr->ai_addrlen);
                  freeaddrinfo_retro(our_addr);
               }
               else
                  continue;
            }
            else
               continue;
         }
      }
   }
   net_ifinfo_free(&interfaces);
#endif
   return true;
}