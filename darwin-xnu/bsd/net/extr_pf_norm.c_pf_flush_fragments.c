
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_fragment {int dummy; } ;


 int DPFPRINTF (char*) ;
 struct pf_fragment* TAILQ_LAST (int *,int ) ;
 int pf_cachequeue ;
 int pf_fragqueue ;
 int pf_free_fragment (struct pf_fragment*) ;
 int pf_ncache ;
 int pf_nfrents ;

__attribute__((used)) static void
pf_flush_fragments(void)
{
 struct pf_fragment *frag;
 int goal;

 goal = pf_nfrents * 9 / 10;
 DPFPRINTF(("trying to free > %d frents\n",
     pf_nfrents - goal));
 while (goal < pf_nfrents) {
  frag = TAILQ_LAST(&pf_fragqueue, pf_fragqueue);
  if (frag == ((void*)0))
   break;
  pf_free_fragment(frag);
 }


 goal = pf_ncache * 9 / 10;
 DPFPRINTF(("trying to free > %d cache entries\n",
     pf_ncache - goal));
 while (goal < pf_ncache) {
  frag = TAILQ_LAST(&pf_cachequeue, pf_cachequeue);
  if (frag == ((void*)0))
   break;
  pf_free_fragment(frag);
 }
}
