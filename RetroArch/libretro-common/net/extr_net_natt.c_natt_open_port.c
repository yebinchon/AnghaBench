
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct natt_status {int have_inet4; int have_inet6; struct sockaddr_in6 ext_inet6_addr; struct sockaddr_in ext_inet4_addr; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; scalar_t__ ai_addr; int member_0; } ;
typedef int socklen_t ;
typedef enum socket_protocol { ____Placeholder_socket_protocol } socket_protocol ;
struct TYPE_4__ {int servicetype; } ;
struct TYPE_6__ {TYPE_1__ first; } ;
struct TYPE_5__ {int * controlURL; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int PATH_MAX_LENGTH ;
 int SOCKET_PROTOCOL_UDP ;
 int UPNP_AddAnyPortMapping (int *,int ,char*,char*,char*,char*,char const*,int *,char*,char*) ;
 int UPNP_AddPortMapping (int *,int ,char*,char*,char*,char*,char const*,int *,char*) ;
 int UPNP_GetExternalIPAddress (int *,int ,char*) ;
 TYPE_3__ data ;
 int freeaddrinfo_retro (struct addrinfo*) ;
 scalar_t__ getaddrinfo_retro (char*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int,char*,int,int) ;
 int memcpy (char*,char*,int) ;
 TYPE_2__ urls ;

__attribute__((used)) static bool natt_open_port(struct natt_status *status,
      struct sockaddr *addr, socklen_t addrlen, enum socket_protocol proto)
{
   return 0;




}
