
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tbl ;
struct pfr_table {struct pfr_table* pfrt_anchor; struct pfr_table* pfrt_name; } ;
struct pfr_ktable {int pfrkt_flags; int * pfrkt_refcnt; struct pfr_ktable* pfrkt_root; } ;
struct pf_ruleset {struct pf_anchor* anchor; } ;
struct pf_anchor {char* path; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 size_t PFR_REFCNT_RULE ;
 int PFR_TFLAG_REFERENCED ;
 int bzero (struct pfr_table*,int) ;
 int pf_calendar_time_second () ;
 int pf_lock ;
 struct pfr_ktable* pfr_create_ktable (struct pfr_table*,int ,int) ;
 int pfr_destroy_ktable (struct pfr_ktable*,int ) ;
 int pfr_insert_ktable (struct pfr_ktable*) ;
 struct pfr_ktable* pfr_lookup_table (struct pfr_table*) ;
 int pfr_setflags_ktable (struct pfr_ktable*,int) ;
 int strlcpy (struct pfr_table*,char*,int) ;

struct pfr_ktable *
pfr_attach_table(struct pf_ruleset *rs, char *name)
{
 struct pfr_ktable *kt, *rt;
 struct pfr_table tbl;
 struct pf_anchor *ac = rs->anchor;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 bzero(&tbl, sizeof (tbl));
 strlcpy(tbl.pfrt_name, name, sizeof (tbl.pfrt_name));
 if (ac != ((void*)0))
  strlcpy(tbl.pfrt_anchor, ac->path, sizeof (tbl.pfrt_anchor));
 kt = pfr_lookup_table(&tbl);
 if (kt == ((void*)0)) {
  kt = pfr_create_ktable(&tbl, pf_calendar_time_second(), 1);
  if (kt == ((void*)0))
   return (((void*)0));
  if (ac != ((void*)0)) {
   bzero(tbl.pfrt_anchor, sizeof (tbl.pfrt_anchor));
   rt = pfr_lookup_table(&tbl);
   if (rt == ((void*)0)) {
    rt = pfr_create_ktable(&tbl, 0, 1);
    if (rt == ((void*)0)) {
     pfr_destroy_ktable(kt, 0);
     return (((void*)0));
    }
    pfr_insert_ktable(rt);
   }
   kt->pfrkt_root = rt;
  }
  pfr_insert_ktable(kt);
 }
 if (!kt->pfrkt_refcnt[PFR_REFCNT_RULE]++)
  pfr_setflags_ktable(kt, kt->pfrkt_flags|PFR_TFLAG_REFERENCED);
 return (kt);
}
