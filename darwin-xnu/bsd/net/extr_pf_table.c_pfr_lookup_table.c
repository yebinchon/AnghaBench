
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfr_ktable {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct pfr_ktable* RB_FIND (int ,int *,struct pfr_ktable*) ;
 int pf_lock ;
 int pfr_ktablehead ;
 int pfr_ktables ;

__attribute__((used)) static struct pfr_ktable *
pfr_lookup_table(struct pfr_table *tbl)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);


 return (RB_FIND(pfr_ktablehead, &pfr_ktables,
     (struct pfr_ktable *)(void *)tbl));
}
