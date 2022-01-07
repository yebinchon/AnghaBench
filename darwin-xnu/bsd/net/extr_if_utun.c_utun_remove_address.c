
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct in6_ifreq {struct sockaddr ifr_addr; int ifr_name; } ;
struct ifreq {struct sockaddr ifr_addr; int ifr_name; } ;
typedef int socket_t ;
typedef scalar_t__ protocol_family_t ;
typedef int ifr6 ;
typedef int ifr ;
typedef int ifnet_t ;
typedef int ifaddr_t ;
typedef int errno_t ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int SIOCDIFADDR ;
 int SIOCDIFADDR_IN6 ;
 int bzero (struct in6_ifreq*,int) ;
 int ifaddr_address (int ,struct sockaddr*,int) ;
 char* ifnet_name (int ) ;
 int ifnet_unit (int ) ;
 int printf (char*,int) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int sock_ioctl (int ,int ,struct in6_ifreq*) ;

__attribute__((used)) static void
utun_remove_address(ifnet_t interface,
     protocol_family_t protocol,
     ifaddr_t address,
     socket_t pf_socket)
{
 errno_t result = 0;


 if (protocol == PF_INET) {
  struct ifreq ifr;

  bzero(&ifr, sizeof(ifr));
  snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d",
     ifnet_name(interface), ifnet_unit(interface));
  result = ifaddr_address(address, &ifr.ifr_addr, sizeof(ifr.ifr_addr));
  if (result != 0) {
   printf("utun_remove_address - ifaddr_address failed: %d", result);
  } else {
   result = sock_ioctl(pf_socket, SIOCDIFADDR, &ifr);
   if (result != 0) {
    printf("utun_remove_address - SIOCDIFADDR failed: %d", result);
   }
  }
 } else if (protocol == PF_INET6) {
  struct in6_ifreq ifr6;

  bzero(&ifr6, sizeof(ifr6));
  snprintf(ifr6.ifr_name, sizeof(ifr6.ifr_name), "%s%d",
     ifnet_name(interface), ifnet_unit(interface));
  result = ifaddr_address(address, (struct sockaddr*)&ifr6.ifr_addr,
        sizeof(ifr6.ifr_addr));
  if (result != 0) {
   printf("utun_remove_address - ifaddr_address failed (v6): %d",
       result);
  } else {
   result = sock_ioctl(pf_socket, SIOCDIFADDR_IN6, &ifr6);
   if (result != 0) {
    printf("utun_remove_address - SIOCDIFADDR_IN6 failed: %d",
        result);
   }
  }
 }
}
