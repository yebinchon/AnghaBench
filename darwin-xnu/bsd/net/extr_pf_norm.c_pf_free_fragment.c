
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_frent {scalar_t__ fr_off; scalar_t__ fr_end; int fr_m; } ;
struct pf_frcache {scalar_t__ fr_off; scalar_t__ fr_end; int fr_m; } ;
struct pf_fragment {int fr_cache; int fr_queue; } ;


 scalar_t__ BUFFER_FRAGMENTS (struct pf_fragment*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 struct pf_frent* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct pf_frent*,int ) ;
 int VERIFY (int) ;
 int fr_next ;
 int m_freem (int ) ;
 int pf_cent_pl ;
 int pf_frent_pl ;
 int pf_ncache ;
 int pf_nfrents ;
 int pf_remove_fragment (struct pf_fragment*) ;
 int pool_put (int *,struct pf_frent*) ;

__attribute__((used)) static void
pf_free_fragment(struct pf_fragment *frag)
{
 struct pf_frent *frent;
 struct pf_frcache *frcache;


 if (BUFFER_FRAGMENTS(frag)) {
  for (frent = LIST_FIRST(&frag->fr_queue); frent;
      frent = LIST_FIRST(&frag->fr_queue)) {
   LIST_REMOVE(frent, fr_next);

   m_freem(frent->fr_m);
   pool_put(&pf_frent_pl, frent);
   pf_nfrents--;
  }
 } else {
  for (frcache = LIST_FIRST(&frag->fr_cache); frcache;
      frcache = LIST_FIRST(&frag->fr_cache)) {
   LIST_REMOVE(frcache, fr_next);

   VERIFY(LIST_EMPTY(&frag->fr_cache) ||
       LIST_FIRST(&frag->fr_cache)->fr_off >
       frcache->fr_end);

   pool_put(&pf_cent_pl, frcache);
   pf_ncache--;
  }
 }

 pf_remove_fragment(frag);
}
