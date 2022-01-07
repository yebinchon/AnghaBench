
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* righttree; struct TYPE_4__* lefttree; } ;
typedef TYPE_1__ Plan ;


 scalar_t__ IsCitusCustomScan (TYPE_1__*) ;

__attribute__((used)) static bool
IsCitusPlan(Plan *plan)
{
 if (plan == ((void*)0))
 {
  return 0;
 }

 if (IsCitusCustomScan(plan))
 {
  return 1;
 }

 if (plan->lefttree != ((void*)0) && IsCitusPlan(plan->lefttree))
 {
  return 1;
 }

 if (plan->righttree != ((void*)0) && IsCitusPlan(plan->righttree))
 {
  return 1;
 }

 return 0;
}
