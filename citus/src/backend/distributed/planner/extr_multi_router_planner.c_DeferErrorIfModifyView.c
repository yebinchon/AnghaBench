
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rtable; } ;
struct TYPE_4__ {scalar_t__ rtekind; scalar_t__ relkind; int inFromCl; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int DeferredErrorMessage ;


 int * DeferredError (int ,char*,int *,int *) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 scalar_t__ NIL ;
 scalar_t__ RELKIND_VIEW ;
 scalar_t__ RTE_RELATION ;
 scalar_t__ linitial (scalar_t__) ;

__attribute__((used)) static DeferredErrorMessage *
DeferErrorIfModifyView(Query *queryTree)
{
 if (queryTree->rtable != NIL)
 {
  RangeTblEntry *firstRangeTableElement = (RangeTblEntry *) linitial(
   queryTree->rtable);

  if (firstRangeTableElement->rtekind == RTE_RELATION &&
   firstRangeTableElement->relkind == RELKIND_VIEW &&
   firstRangeTableElement->inFromCl == 0)
  {
   return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
         "cannot modify views over distributed tables", ((void*)0),
         ((void*)0));
  }
 }

 return ((void*)0);
}
