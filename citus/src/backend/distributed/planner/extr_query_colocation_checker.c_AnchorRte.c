
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * setOperations; } ;
struct TYPE_9__ {int rtable; int * jointree; } ;
struct TYPE_8__ {scalar_t__ rtekind; int relid; TYPE_4__* subquery; } ;
typedef int Relids ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int Oid ;
typedef int Node ;
typedef int FromExpr ;


 int ContainsUnionSubquery (TYPE_4__*) ;
 scalar_t__ DISTRIBUTE_BY_NONE ;
 scalar_t__ PartitionMethod (int ) ;
 scalar_t__ QueryContainsDistributedTableRTE (TYPE_4__*) ;
 scalar_t__ RTE_RELATION ;
 scalar_t__ RTE_SUBQUERY ;
 int bms_next_member (int ,int) ;
 int get_relids_in_jointree (int *,int) ;
 TYPE_1__* rt_fetch (int,int ) ;

__attribute__((used)) static RangeTblEntry *
AnchorRte(Query *subquery)
{
 FromExpr *joinTree = subquery->jointree;
 Relids joinRelIds = get_relids_in_jointree((Node *) joinTree, 0);
 int currentRTEIndex = -1;
 RangeTblEntry *anchorRangeTblEntry = ((void*)0);
 while ((currentRTEIndex = bms_next_member(joinRelIds, currentRTEIndex)) >= 0)
 {
  RangeTblEntry *currentRte = rt_fetch(currentRTEIndex, subquery->rtable);
  if (anchorRangeTblEntry == ((void*)0) && currentRte->rtekind == RTE_SUBQUERY &&
   QueryContainsDistributedTableRTE(currentRte->subquery) &&
   currentRte->subquery->setOperations == ((void*)0) &&
   !ContainsUnionSubquery(currentRte->subquery))
  {

   anchorRangeTblEntry = currentRte;
  }
  else if (currentRte->rtekind == RTE_RELATION)
  {
   Oid relationId = currentRte->relid;

   if (PartitionMethod(relationId) == DISTRIBUTE_BY_NONE)
   {




    continue;
   }

   anchorRangeTblEntry = currentRte;
   break;
  }
 }

 return anchorRangeTblEntry;
}
