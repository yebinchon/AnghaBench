
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct sockaddr_in6 {int sin6_len; int sin6_port; } ;
struct sockaddr_in {int sin_len; int sin_port; } ;
struct sockaddr {int sa_family; } ;




 int FALSE ;
 int TRUE ;
 scalar_t__ ntohs (int ) ;
 struct sockaddr_in* satosin (struct sockaddr*) ;
 struct sockaddr_in6* satosin6 (struct sockaddr*) ;

bool
check_port(struct sockaddr *addr, u_short port)
{
 struct sockaddr_in *sin = ((void*)0);
 struct sockaddr_in6 *sin6 = ((void*)0);

 if (addr == ((void*)0) || port == 0) {
  return FALSE;
 }

 switch (addr->sa_family) {
  case 129:
   sin = satosin(addr);
   if (sin->sin_len != sizeof(*sin)) {
    return FALSE;
   }
   if (port == ntohs(sin->sin_port)) {
    return TRUE;
   }
   break;
  case 128:
   sin6 = satosin6(addr);
   if (sin6->sin6_len != sizeof(*sin6)) {
    return FALSE;
   }
   if (port == ntohs(sin6->sin6_port)) {
    return TRUE;
   }
   break;
  default:
   break;
 }
 return FALSE;
}
