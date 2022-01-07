
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rows; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int Oid ;
typedef scalar_t__ Cost ;


 int NIL ;
 int add_path (TYPE_1__*,int *) ;
 scalar_t__ create_foreignscan_path (int *,TYPE_1__*,int *,scalar_t__,scalar_t__,scalar_t__,int ,int *,int *,int ) ;

__attribute__((used)) static void
FakeGetForeignPaths(PlannerInfo *root, RelOptInfo *baserel, Oid foreigntableid)
{
 Cost startup_cost = 0;
 Cost total_cost = startup_cost + baserel->rows;

 add_path(baserel, (Path *) create_foreignscan_path(root, baserel, ((void*)0), baserel->rows,
                startup_cost, total_cost, NIL,
                ((void*)0), ((void*)0), NIL));
}
