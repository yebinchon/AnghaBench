
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_ifreq {int ifr_name; } ;
struct ifreq {int ifr_name; } ;
typedef int socket_t ;
typedef scalar_t__ protocol_family_t ;
typedef int ifr6 ;
typedef int ifr ;
typedef int ifnet_t ;
typedef int errno_t ;


 int EPROTONOSUPPORT ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int SIOCPROTODETACH ;
 int SIOCPROTODETACH_IN6 ;
 int bzero (struct in6_ifreq*,int) ;
 char* ifnet_name (int ) ;
 int ifnet_unit (int ) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int sock_ioctl (int ,int ,struct in6_ifreq*) ;

__attribute__((used)) static errno_t
utun_detach_ip(ifnet_t interface,
      protocol_family_t protocol,
      socket_t pf_socket)
{
 errno_t result = EPROTONOSUPPORT;


 if (protocol == PF_INET) {
  struct ifreq ifr;

  bzero(&ifr, sizeof(ifr));
  snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d",
     ifnet_name(interface), ifnet_unit(interface));

  result = sock_ioctl(pf_socket, SIOCPROTODETACH, &ifr);
 } else if (protocol == PF_INET6) {
  struct in6_ifreq ifr6;

  bzero(&ifr6, sizeof(ifr6));
  snprintf(ifr6.ifr_name, sizeof(ifr6.ifr_name), "%s%d",
     ifnet_name(interface), ifnet_unit(interface));

  result = sock_ioctl(pf_socket, SIOCPROTODETACH_IN6, &ifr6);
 }

 return result;
}
