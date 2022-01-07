
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct radix_node_head {struct radix_node* rnh_treetop; } ;
struct radix_node {int rn_offset; int rn_bit; int rn_bmask; scalar_t__ rn_mask; int* rn_key; int rn_flags; struct radix_node* rn_dupedkey; struct radix_mask* rn_mklist; struct radix_node* rn_parent; struct radix_node* rn_left; struct radix_node* rn_right; } ;
struct radix_mask {int rm_flags; int rm_bit; scalar_t__ rm_mask; struct radix_mask* rm_mklist; struct radix_node* rm_leaf; } ;
typedef int rn_matchf_t ;
typedef int* caddr_t ;


 int RNF_NORMAL ;
 int RNF_ROOT ;
 scalar_t__ RN_MATCHF (struct radix_node*,int *,void*) ;
 int min (size_t,int) ;
 scalar_t__ rn_satisfies_leaf (int*,struct radix_node*,int,int *,void*) ;
 struct radix_node* rn_search_m (int*,struct radix_node*,scalar_t__) ;

struct radix_node *
rn_match_args(void *v_arg, struct radix_node_head *head,
    rn_matchf_t *f, void *w)
{
 caddr_t v = v_arg;
 struct radix_node *t = head->rnh_treetop, *x;
 caddr_t cp = v, cp2;
 caddr_t cplim;
 struct radix_node *saved_t, *top = t;
 int off = t->rn_offset, vlen = *(u_char *)cp, matched_off;
 int test, b, rn_bit;





 for (; t->rn_bit >= 0; ) {
  if (t->rn_bmask & cp[t->rn_offset])
   t = t->rn_right;
  else
   t = t->rn_left;
 }
 if (t->rn_mask)
  vlen = *(u_char *)t->rn_mask;
 cp += off; cp2 = t->rn_key + off; cplim = v + vlen;
 for (; cp < cplim; cp++, cp2++)
  if (*cp != *cp2)
   goto on1;







 if (t->rn_flags & RNF_ROOT)
  t = t->rn_dupedkey;
 if (t == ((void*)0) || RN_MATCHF(t, f, w)) {
  return (t);
 } else {





  if (t->rn_parent->rn_flags & RNF_ROOT) {

   return (((void*)0));
  }
  b = 0;
  goto keeplooking;
 }
on1:
 test = (*cp ^ *cp2) & 0xff;
 for (b = 7; (test >>= 1) > 0;)
  b--;
keeplooking:
 matched_off = cp - v;
 b += matched_off << 3;
 rn_bit = -1 - b;



 if ((saved_t = t)->rn_mask == 0)
  t = t->rn_dupedkey;
 for (; t; t = t->rn_dupedkey) {





  if (t->rn_flags & RNF_NORMAL) {
   if ((rn_bit <= t->rn_bit) && RN_MATCHF(t, f, w))
    return (t);
  } else if (rn_satisfies_leaf(v, t, matched_off, f, w)) {
   return (t);
  }
 }
 t = saved_t;

 do {
  struct radix_mask *m;
  t = t->rn_parent;
  m = t->rn_mklist;






  while (m) {
   if (m->rm_flags & RNF_NORMAL) {
    if ((rn_bit <= m->rm_bit) &&
        RN_MATCHF(m->rm_leaf, f, w))
     return (m->rm_leaf);
   } else {
    off = min(t->rn_offset, matched_off);
    x = rn_search_m(v, t, m->rm_mask);
    while (x && x->rn_mask != m->rm_mask)
     x = x->rn_dupedkey;
    if (x && rn_satisfies_leaf(v, x, off, f, w))
     return (x);
   }
   m = m->rm_mklist;
  }
 } while (t != top);
 return (((void*)0));
}
