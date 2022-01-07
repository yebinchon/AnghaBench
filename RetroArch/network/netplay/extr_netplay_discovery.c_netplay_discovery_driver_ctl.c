
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct netplay_host_list {int size; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int member_0; } ;
struct ad_packet {int dummy; } ;
typedef int ssize_t ;
struct TYPE_7__ {TYPE_1__* entries; int size; } ;
typedef TYPE_2__ net_ifinfo_t ;
typedef enum rarch_netplay_discovery_ctl_state { ____Placeholder_rarch_netplay_discovery_ctl_state } rarch_netplay_discovery_ctl_state ;
typedef int canBroadcast ;
struct TYPE_8__ {int address; int protocol_version; } ;
struct TYPE_6__ {int host; } ;


 int NETPLAY_HOST_STR_LEN ;
 int NETPLAY_PROTOCOL_VERSION ;
 scalar_t__ RARCH_DEFAULT_PORT ;



 int RARCH_WARN (char*,...) ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 TYPE_5__ ad_packet_buffer ;
 struct netplay_host_list discovered_hosts ;
 int errno ;
 int freeaddrinfo_retro (struct addrinfo*) ;
 int getaddrinfo_retro (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int htonl (int ) ;
 scalar_t__ lan_ad_client_fd ;
 int memcpy (void*,char*,int) ;
 int net_ifinfo_free (TYPE_2__*) ;
 int net_ifinfo_new (TYPE_2__*) ;
 int netplay_lan_ad_client () ;
 scalar_t__ sendto (scalar_t__,char const*,int,int ,int ,int ) ;
 int setsockopt (scalar_t__,int ,int ,char const*,int) ;
 int snprintf (char*,int,char*,unsigned short) ;
 int strlcpy (int ,int ,int ) ;

bool netplay_discovery_driver_ctl(enum rarch_netplay_discovery_ctl_state state, void *data)
{
   return 1;
}
