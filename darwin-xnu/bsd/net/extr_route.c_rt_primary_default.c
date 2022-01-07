
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {int rt_flags; } ;
typedef int boolean_t ;


 int RTF_IFSCOPE ;
 scalar_t__ SA_DEFAULT (struct sockaddr*) ;

boolean_t
rt_primary_default(struct rtentry *rt, struct sockaddr *dst)
{
 return (SA_DEFAULT(dst) && !(rt->rt_flags & RTF_IFSCOPE));
}
