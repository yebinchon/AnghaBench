
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ IN_CLASSA (int) ;
 int IN_CLASSA_NET ;
 int IN_CLASSA_NSHIFT ;
 scalar_t__ IN_EXPERIMENTAL (int) ;
 int IN_LOOPBACKNET ;
 scalar_t__ IN_MULTICAST (int) ;
 int TRUE ;
 int ntohl (int ) ;

boolean_t
in_canforward(struct in_addr in)
{
 u_int32_t i = ntohl(in.s_addr);
 u_int32_t net;

 if (IN_EXPERIMENTAL(i) || IN_MULTICAST(i))
  return (FALSE);
 if (IN_CLASSA(i)) {
  net = i & IN_CLASSA_NET;
  if (net == 0 || net == (IN_LOOPBACKNET << IN_CLASSA_NSHIFT))
   return (FALSE);
 }
 return (TRUE);
}
