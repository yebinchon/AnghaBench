
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 scalar_t__ DISABLE_LIMIT_APPROXIMATION ;
 int HasOrderByAverage (int *,int *) ;
 int HasOrderByComplexExpression (int *,int *) ;
 scalar_t__ LimitClauseRowFetchCount ;
 int * NIL ;

__attribute__((used)) static bool
CanPushDownLimitApproximate(List *sortClauseList, List *targetList)
{
 bool canApproximate = 0;


 if (LimitClauseRowFetchCount == DISABLE_LIMIT_APPROXIMATION)
 {
  return 0;
 }

 if (sortClauseList != NIL)
 {
  bool orderByAverage = HasOrderByAverage(sortClauseList, targetList);
  bool orderByComplex = HasOrderByComplexExpression(sortClauseList, targetList);





  if (!orderByAverage && !orderByComplex)
  {
   canApproximate = 1;
  }
 }

 return canApproximate;
}
