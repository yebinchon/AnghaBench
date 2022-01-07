
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment {int dummy; } ;


 scalar_t__ BUFFER_FRAGMENTS (struct pf_fragment*) ;
 int RB_REMOVE (int ,int *,struct pf_fragment*) ;
 int TAILQ_REMOVE (int *,struct pf_fragment*,int ) ;
 int frag_next ;
 int pf_cache_pl ;
 int pf_cache_tree ;
 int pf_cachequeue ;
 int pf_frag_pl ;
 int pf_frag_tree ;
 int pf_fragqueue ;
 int pool_put (int *,struct pf_fragment*) ;

__attribute__((used)) static void
pf_remove_fragment(struct pf_fragment *frag)
{
 if (BUFFER_FRAGMENTS(frag)) {
  RB_REMOVE(pf_frag_tree, &pf_frag_tree, frag);
  TAILQ_REMOVE(&pf_fragqueue, frag, frag_next);
  pool_put(&pf_frag_pl, frag);
 } else {
  RB_REMOVE(pf_frag_tree, &pf_cache_tree, frag);
  TAILQ_REMOVE(&pf_cachequeue, frag, frag_next);
  pool_put(&pf_cache_pl, frag);
 }
}
