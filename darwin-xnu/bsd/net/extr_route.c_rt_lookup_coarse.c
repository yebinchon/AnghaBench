
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;
struct radix_node_head {int dummy; } ;
typedef int boolean_t ;


 int IFSCOPE_NONE ;
 int TRUE ;
 struct rtentry* rt_lookup_common (int ,int ,struct sockaddr*,struct sockaddr*,struct radix_node_head*,int ) ;

struct rtentry *
rt_lookup_coarse(boolean_t lookup_only, struct sockaddr *dst,
    struct sockaddr *netmask, struct radix_node_head *rnh)
{
 return (rt_lookup_common(lookup_only, TRUE, dst, netmask,
     rnh, IFSCOPE_NONE));
}
