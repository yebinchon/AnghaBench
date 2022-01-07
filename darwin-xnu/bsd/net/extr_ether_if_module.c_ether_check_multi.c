
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_dl {int dummy; } ;
struct sockaddr {int sa_family; int * sa_data; } ;
typedef int ifnet_t ;
typedef int errno_t ;




 int* CONST_LLADDR (struct sockaddr_dl const*) ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;

errno_t
ether_check_multi(ifnet_t ifp, const struct sockaddr *proto_addr)
{
#pragma unused(ifp)
 errno_t result = EAFNOSUPPORT;
 const u_char *e_addr;





 switch(proto_addr->sa_family) {
 case 128:
  e_addr = (const u_char*)&proto_addr->sa_data[0];
  if ((e_addr[0] & 0x01) != 0x01)
   result = EADDRNOTAVAIL;
  else
   result = 0;
  break;

 case 129:
  e_addr = CONST_LLADDR((const struct sockaddr_dl*)
      (uintptr_t)(size_t)proto_addr);
  if ((e_addr[0] & 0x01) != 0x01)
   result = EADDRNOTAVAIL;
  else
   result = 0;
  break;
 }

 return (result);
}
