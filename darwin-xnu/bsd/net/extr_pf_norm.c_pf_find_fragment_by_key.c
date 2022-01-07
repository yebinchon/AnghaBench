
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment {int fr_timeout; } ;
struct pf_frag_tree {int dummy; } ;


 scalar_t__ BUFFER_FRAGMENTS (struct pf_fragment*) ;
 struct pf_fragment* RB_FIND (int ,struct pf_frag_tree*,struct pf_fragment*) ;
 int TAILQ_INSERT_HEAD (int *,struct pf_fragment*,int ) ;
 int TAILQ_REMOVE (int *,struct pf_fragment*,int ) ;
 int frag_next ;
 int pf_cachequeue ;
 int pf_frag_tree ;
 int pf_fragqueue ;
 int pf_time_second () ;

__attribute__((used)) static struct pf_fragment *
pf_find_fragment_by_key(struct pf_fragment *key, struct pf_frag_tree *tree)
{
 struct pf_fragment *frag;

 frag = RB_FIND(pf_frag_tree, tree, key);
 if (frag != ((void*)0)) {

  frag->fr_timeout = pf_time_second();
  if (BUFFER_FRAGMENTS(frag)) {
   TAILQ_REMOVE(&pf_fragqueue, frag, frag_next);
   TAILQ_INSERT_HEAD(&pf_fragqueue, frag, frag_next);
  } else {
   TAILQ_REMOVE(&pf_cachequeue, frag, frag_next);
   TAILQ_INSERT_HEAD(&pf_cachequeue, frag, frag_next);
  }
 }

 return (frag);
}
