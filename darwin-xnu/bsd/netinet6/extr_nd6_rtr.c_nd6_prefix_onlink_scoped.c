
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int dummy; } ;


 int TRUE ;
 int nd6_prefix_onlink_common (struct nd_prefix*,int ,unsigned int) ;

int
nd6_prefix_onlink_scoped(struct nd_prefix *pr, unsigned int ifscope)
{
 return (nd6_prefix_onlink_common(pr, TRUE, ifscope));
}
