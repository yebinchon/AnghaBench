
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int dummy; } ;
struct radix_node {int dummy; } ;


 struct radix_node* rn_lookup_args (void*,void*,struct radix_node_head*,int *,int *) ;

struct radix_node *
rn_lookup(void *v_arg, void *m_arg, struct radix_node_head *head)
{
 return (rn_lookup_args(v_arg, m_arg, head, ((void*)0), ((void*)0)));
}
