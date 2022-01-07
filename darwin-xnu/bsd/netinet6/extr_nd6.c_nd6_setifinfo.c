
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
struct ifnet {int dummy; } ;
typedef scalar_t__ int32_t ;


 int ND6_IFF_IFDISABLED ;
 int ND6_IFF_PROXY_PREFIXES ;
 int nd6_if_disable (struct ifnet*,int) ;
 int nd6_if_prproxy (struct ifnet*,int) ;

int
nd6_setifinfo(struct ifnet *ifp, u_int32_t before, u_int32_t after)
{
 uint32_t b, a;
 int err = 0;




 if ((before & ND6_IFF_IFDISABLED) ||
     (after & ND6_IFF_IFDISABLED)) {
  b = (before & ND6_IFF_IFDISABLED);
  a = (after & ND6_IFF_IFDISABLED);

  if (b != a && (err = nd6_if_disable(ifp,
       ((int32_t)(a - b) > 0))) != 0)
   goto done;
 }




 if ((before & ND6_IFF_PROXY_PREFIXES) ||
     (after & ND6_IFF_PROXY_PREFIXES)) {
  b = (before & ND6_IFF_PROXY_PREFIXES);
  a = (after & ND6_IFF_PROXY_PREFIXES);

  if (b != a && (err = nd6_if_prproxy(ifp,
       ((int32_t)(a - b) > 0))) != 0)
   goto done;
 }
done:
 return (err);
}
