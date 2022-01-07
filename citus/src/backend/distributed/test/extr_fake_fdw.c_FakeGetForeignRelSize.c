
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* fdw_private; scalar_t__ rows; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Oid ;


 scalar_t__ palloc0 (int) ;

__attribute__((used)) static void
FakeGetForeignRelSize(PlannerInfo *root, RelOptInfo *baserel, Oid foreigntableid)
{
 baserel->rows = 0;
 baserel->fdw_private = (void *) palloc0(1);
}
