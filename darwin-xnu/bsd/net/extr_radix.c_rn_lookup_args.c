
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radix_node_head {TYPE_1__* rnh_treetop; } ;
struct radix_node {scalar_t__ rn_key; scalar_t__ rn_mask; struct radix_node* rn_dupedkey; } ;
typedef int rn_matchf_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int rn_offset; } ;


 struct radix_node* rn_addmask (void*,int,int ) ;
 struct radix_node* rn_match_args (void*,struct radix_node_head*,int *,void*) ;

struct radix_node *
rn_lookup_args(void *v_arg, void *m_arg, struct radix_node_head *head,
    rn_matchf_t *f, void *w)
{
 struct radix_node *x;
 caddr_t netmask = ((void*)0);

 if (m_arg) {
  x = rn_addmask(m_arg, 1, head->rnh_treetop->rn_offset);
  if (x == 0)
   return (((void*)0));
  netmask = x->rn_key;
 }
 x = rn_match_args(v_arg, head, f, w);
 if (x && netmask) {
  while (x && x->rn_mask != netmask)
   x = x->rn_dupedkey;
 }
 return x;
}
