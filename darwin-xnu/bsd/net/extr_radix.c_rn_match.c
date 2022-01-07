
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int dummy; } ;
struct radix_node {int dummy; } ;


 struct radix_node* rn_match_args (void*,struct radix_node_head*,int *,int *) ;

struct radix_node *
rn_match(void *v_arg, struct radix_node_head *head)
{
 return (rn_match_args(v_arg, head, ((void*)0), ((void*)0)));
}
