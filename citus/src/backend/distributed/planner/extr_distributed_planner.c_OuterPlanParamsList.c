
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int plan_params; struct TYPE_7__* parent_root; } ;
struct TYPE_6__ {int plan_params; TYPE_2__* root; } ;
typedef TYPE_1__ RootPlanParams ;
typedef TYPE_2__ PlannerInfo ;
typedef int List ;


 int CopyPlanParamList (int ) ;
 int * NIL ;
 int * lappend (int *,TYPE_1__*) ;
 TYPE_1__* palloc0 (int) ;

__attribute__((used)) static List *
OuterPlanParamsList(PlannerInfo *root)
{
 List *planParamsList = NIL;
 PlannerInfo *outerNodeRoot = ((void*)0);

 for (outerNodeRoot = root->parent_root; outerNodeRoot != ((void*)0);
   outerNodeRoot = outerNodeRoot->parent_root)
 {
  RootPlanParams *rootPlanParams = palloc0(sizeof(RootPlanParams));
  rootPlanParams->root = outerNodeRoot;





  rootPlanParams->plan_params = CopyPlanParamList(outerNodeRoot->plan_params);

  planParamsList = lappend(planParamsList, rootPlanParams);
 }

 return planParamsList;
}
