
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct if_llreach {scalar_t__ lr_lastrcvd; scalar_t__ lr_reachable; } ;


 scalar_t__ net_uptime () ;

__attribute__((used)) static __inline int
iflr_reachable(struct if_llreach *lr, int cmp_delta, u_int64_t tval)
{
 u_int64_t now;
 u_int64_t expire;

 now = net_uptime();



 expire = lr->lr_lastrcvd + lr->lr_reachable;





 if (!cmp_delta)
  return (expire >= now);






 return ((expire >= now) && (now - tval) < lr->lr_reachable);
}
