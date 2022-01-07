
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; int sa_len; } ;
typedef int boolean_t ;




 int FALSE ;
 int TRUE ;

__attribute__((used)) static boolean_t
flow_divert_is_sockaddr_valid(struct sockaddr *addr)
{
 switch(addr->sa_family)
 {
  case 129:
   if (addr->sa_len != sizeof(struct sockaddr_in)) {
    return FALSE;
   }
   break;







  default:
   return FALSE;
 }
 return TRUE;
}
