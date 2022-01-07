
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct nd_prefix {int dummy; } ;


 int nd6_prproxy_sols_purge (struct nd_prefix*,int ) ;

void
nd6_prproxy_sols_prune(struct nd_prefix *pr, u_int32_t max_stgt)
{
 nd6_prproxy_sols_purge(pr, max_stgt);
}
