
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* walktree_f_t ) (struct radix_node*,void*) ;
typedef int u_char ;
struct radix_node_head {int rnh_cnt; struct radix_node* rnh_treetop; } ;
struct radix_node {int rn_bit; int rn_bmask; size_t rn_offset; int rn_flags; struct radix_node* rn_dupedkey; struct radix_node* rn_left; struct radix_node* rn_right; struct radix_node* rn_parent; } ;


 int RNF_ROOT ;
 int stub1 (struct radix_node*,void*) ;

__attribute__((used)) static int
rn_walktree_from(struct radix_node_head *h, void *a, void *m, walktree_f_t *f,
    void *w)
{
 int error;
 struct radix_node *base, *next;
 u_char *xa = (u_char *)a;
 u_char *xm = (u_char *)m;
 struct radix_node *rn, *last;
 int stopping;
 int lastb;
 int rnh_cnt;
restart:
 last = ((void*)0);
 stopping = 0;
 rnh_cnt = h->rnh_cnt;




 for (rn = h->rnh_treetop; rn->rn_bit >= 0; ) {
  last = rn;
  if (!(rn->rn_bmask & xm[rn->rn_offset]))
   break;

  if (rn->rn_bmask & xa[rn->rn_offset])
   rn = rn->rn_right;
  else
   rn = rn->rn_left;
 }







 rn = last;
 lastb = rn->rn_bit;


 while (rn->rn_bit >= 0)
  rn = rn->rn_left;

 while (!stopping) {
  base = rn;

  while (rn->rn_parent->rn_right == rn
         && !(rn->rn_flags & RNF_ROOT)) {
   rn = rn->rn_parent;


   if (rn->rn_bit <= lastb) {
    stopping = 1;







   }
  }
  for (rn = rn->rn_parent->rn_right; rn->rn_bit >= 0;)
   rn = rn->rn_left;
  next = rn;

  while ((rn = base) != 0) {
   base = rn->rn_dupedkey;
   if (!(rn->rn_flags & RNF_ROOT)
       && (error = (*f)(rn, w)))
    return (error);
  }

  if (h->rnh_cnt < rnh_cnt)
   goto restart;
  rn = next;
  if (rn->rn_flags & RNF_ROOT)
   stopping = 1;
 }
 return 0;
}
