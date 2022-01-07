
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ const num; } ;
typedef TYPE_1__ tQueryResultset ;
typedef scalar_t__ int32_t ;


 int doNestedLoopIntersect (TYPE_1__*,TYPE_1__*) ;
 int doSortIntersect (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void queryResultIntersect(tQueryResultset* pFinalRes, tQueryResultset* pRes) {
  const int32_t NUM_OF_RES_THRESHOLD = 20;


  if (pFinalRes->num <= NUM_OF_RES_THRESHOLD && pRes->num <= NUM_OF_RES_THRESHOLD) {
    doNestedLoopIntersect(pFinalRes, pRes);
  } else {
    doSortIntersect(pFinalRes, pRes);
  }
}
