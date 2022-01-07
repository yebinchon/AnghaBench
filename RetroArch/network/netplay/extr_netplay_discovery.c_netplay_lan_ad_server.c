
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int their_addr ;
struct timeval {int member_0; } ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
struct retro_system_info {char* library_name; char* library_version; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int member_0; } ;
struct ad_packet {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int s ;
struct TYPE_14__ {scalar_t__ tcp_port; char* nick; } ;
typedef TYPE_3__ netplay_t ;
struct TYPE_15__ {unsigned int size; TYPE_2__* entries; } ;
typedef TYPE_4__ net_ifinfo_t ;
typedef int frontend ;
typedef int fd_set ;
struct TYPE_16__ {char* address; char* content; char* subsystem_name; char* retroarch_version; char* nick; char* frontend; char* core; char* core_version; char* content_crc; void* port; void* protocol_version; } ;
struct TYPE_13__ {char* host; } ;
struct TYPE_12__ {char* data; } ;


 int FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int NETPLAY_HOST_LONGSTR_LEN ;
 int NETPLAY_HOST_STR_LEN ;
 scalar_t__ NETPLAY_PROTOCOL_VERSION ;
 char* PACKAGE_VERSION ;
 int RARCH_DEFAULT_PORT ;
 int RARCH_LOG (char*,...) ;
 int RARCH_PATH_BASENAME ;
 int RARCH_PATH_SUBSYSTEM ;
 TYPE_8__ ad_packet_buffer ;
 int content_get_crc () ;
 int freeaddrinfo_retro (struct addrinfo*) ;
 scalar_t__ getaddrinfo_retro (char*,char*,struct addrinfo*,struct addrinfo**) ;
 void* htonl (scalar_t__) ;
 int init_lan_ad_server_socket (TYPE_3__*,int ) ;
 scalar_t__ lan_ad_server_fd ;
 scalar_t__ memcmp (void*,char*,int) ;
 int memcpy (TYPE_8__*,char*,int) ;
 int memset (TYPE_8__*,int ,int) ;
 int net_ifinfo_free (TYPE_4__*) ;
 int net_ifinfo_new (TYPE_4__*) ;
 int netplay_get_architecture (char*,int) ;
 scalar_t__ ntohl (void*) ;
 int ntohs (int ) ;
 char* path_basename (char*) ;
 char* path_get (int ) ;
 struct string_list* path_get_subsystem_list () ;
 scalar_t__ recvfrom (scalar_t__,char*,int,int ,struct sockaddr*,int*) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 int sendto (scalar_t__,char const*,int,int ,int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ socket_select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int string_is_empty (char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 scalar_t__ strstr (char*,char*) ;

bool netplay_lan_ad_server(netplay_t *netplay)
{
   return 1;
}
