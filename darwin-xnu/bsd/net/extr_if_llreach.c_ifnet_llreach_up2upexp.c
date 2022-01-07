
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct if_llreach {scalar_t__ lr_reachable; } ;



u_int64_t
ifnet_llreach_up2upexp(struct if_llreach *lr, u_int64_t uptime)
{
 return (lr->lr_reachable + uptime);
}
