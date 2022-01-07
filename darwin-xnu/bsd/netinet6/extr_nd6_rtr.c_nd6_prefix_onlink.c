
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int dummy; } ;


 int FALSE ;
 int IFSCOPE_NONE ;
 int nd6_prefix_onlink_common (struct nd_prefix*,int ,int ) ;

int
nd6_prefix_onlink(struct nd_prefix *pr)
{
 return (nd6_prefix_onlink_common(pr, FALSE, IFSCOPE_NONE));
}
