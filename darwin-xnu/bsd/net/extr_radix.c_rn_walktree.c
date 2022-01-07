
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* walktree_f_t ) (struct radix_node*,void*) ;
struct radix_node_head {int rnh_cnt; struct radix_node* rnh_treetop; } ;
struct radix_node {scalar_t__ rn_bit; int rn_flags; struct radix_node* rn_dupedkey; struct radix_node* rn_left; struct radix_node* rn_right; struct radix_node* rn_parent; } ;


 int RNF_ROOT ;
 int stub1 (struct radix_node*,void*) ;

__attribute__((used)) static int
rn_walktree(struct radix_node_head *h, walktree_f_t *f, void *w)
{
 int error;
 struct radix_node *base, *next;
 struct radix_node *rn;
 int rnh_cnt;
restart:
 rn = h->rnh_treetop;
 rnh_cnt = h->rnh_cnt;


 while (rn->rn_bit >= 0)
  rn = rn->rn_left;
 for (;;) {
  base = rn;

  while (rn->rn_parent->rn_right == rn &&
      (rn->rn_flags & RNF_ROOT) == 0)
   rn = rn->rn_parent;

  for (rn = rn->rn_parent->rn_right; rn->rn_bit >= 0;)
   rn = rn->rn_left;
  next = rn;

  while ((rn = base) != ((void*)0)) {
   base = rn->rn_dupedkey;
   if (!(rn->rn_flags & RNF_ROOT)
       && (error = (*f)(rn, w)))
    return (error);
  }

  if (h->rnh_cnt < rnh_cnt)
   goto restart;
  rn = next;
  if (rn->rn_flags & RNF_ROOT)
   return (0);
 }

}
