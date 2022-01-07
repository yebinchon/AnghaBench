
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_scrub {int dummy; } ;
struct pf_frent {int dummy; } ;
struct pf_frcache {int dummy; } ;
struct pf_fragment {int dummy; } ;


 int PFFRAG_FRAG_HIWAT ;
 int PFFRAG_FRCACHE_HIWAT ;
 int PFFRAG_FRCENT_HIWAT ;
 int PFFRAG_FRENT_HIWAT ;
 int TAILQ_INIT (int *) ;
 int pf_cache_pl ;
 int pf_cachequeue ;
 int pf_cent_pl ;
 int pf_frag_pl ;
 int pf_fragqueue ;
 int pf_frent_pl ;
 int pf_state_scrub_pl ;
 int pool_init (int *,int,int ,int ,int ,char*,int *) ;
 int pool_sethardlimit (int *,int ,int *,int ) ;
 int pool_sethiwat (int *,int ) ;

void
pf_normalize_init(void)
{
 pool_init(&pf_frent_pl, sizeof (struct pf_frent), 0, 0, 0, "pffrent",
     ((void*)0));
 pool_init(&pf_frag_pl, sizeof (struct pf_fragment), 0, 0, 0, "pffrag",
     ((void*)0));
 pool_init(&pf_cache_pl, sizeof (struct pf_fragment), 0, 0, 0,
     "pffrcache", ((void*)0));
 pool_init(&pf_cent_pl, sizeof (struct pf_frcache), 0, 0, 0, "pffrcent",
     ((void*)0));
 pool_init(&pf_state_scrub_pl, sizeof (struct pf_state_scrub), 0, 0, 0,
     "pfstscr", ((void*)0));

 pool_sethiwat(&pf_frag_pl, PFFRAG_FRAG_HIWAT);
 pool_sethardlimit(&pf_frent_pl, PFFRAG_FRENT_HIWAT, ((void*)0), 0);
 pool_sethardlimit(&pf_cache_pl, PFFRAG_FRCACHE_HIWAT, ((void*)0), 0);
 pool_sethardlimit(&pf_cent_pl, PFFRAG_FRCENT_HIWAT, ((void*)0), 0);

 TAILQ_INIT(&pf_fragqueue);
 TAILQ_INIT(&pf_cachequeue);
}
