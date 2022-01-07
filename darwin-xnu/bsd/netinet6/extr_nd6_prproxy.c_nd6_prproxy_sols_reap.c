
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int dummy; } ;


 int nd6_prproxy_sols_purge (struct nd_prefix*,int ) ;

void
nd6_prproxy_sols_reap(struct nd_prefix *pr)
{
 nd6_prproxy_sols_purge(pr, 0);
}
