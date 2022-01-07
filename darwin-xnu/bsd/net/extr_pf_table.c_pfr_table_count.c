
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfr_table {scalar_t__* pfrt_anchor; } ;
struct pf_ruleset {int tables; } ;
struct TYPE_2__ {int tables; } ;


 int PFR_FLAG_ALLRSETS ;
 struct pf_ruleset* pf_find_ruleset (scalar_t__*) ;
 TYPE_1__ pf_main_ruleset ;
 int pfr_ktable_cnt ;

__attribute__((used)) static int
pfr_table_count(struct pfr_table *filter, int flags)
{
 struct pf_ruleset *rs;

 if (flags & PFR_FLAG_ALLRSETS)
  return (pfr_ktable_cnt);
 if (filter->pfrt_anchor[0]) {
  rs = pf_find_ruleset(filter->pfrt_anchor);
  return ((rs != ((void*)0)) ? rs->tables : -1);
 }
 return (pf_main_ruleset.tables);
}
