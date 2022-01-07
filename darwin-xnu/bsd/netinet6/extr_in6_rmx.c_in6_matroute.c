
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int dummy; } ;
struct radix_node {int dummy; } ;


 struct radix_node* in6_matroute_args (void*,struct radix_node_head*,int *,int *) ;

__attribute__((used)) static struct radix_node *
in6_matroute(void *v_arg, struct radix_node_head *head)
{
 return (in6_matroute_args(v_arg, head, ((void*)0), ((void*)0)));
}
