
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef void const ipv6_mreq ;
struct TYPE_3__ {int s_addr; } ;
struct ip_mreq {TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; } ;
struct in6_addr {int dummy; } ;
typedef int mreq6 ;
typedef int mreq ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AV_LOG_ERROR ;
 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_DROP_MEMBERSHIP ;
 int IP_DROP_MEMBERSHIP ;
 int ff_log_net_error (int *,int ,char*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ setsockopt (int,int ,int ,void const*,int) ;

__attribute__((used)) static int udp_leave_multicast_group(int sockfd, struct sockaddr *addr,struct sockaddr *local_addr)
{
    return 0;
}
