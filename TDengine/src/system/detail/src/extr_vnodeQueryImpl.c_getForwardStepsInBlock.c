
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ (* __block_search_fn_t ) (char*,scalar_t__,scalar_t__,int ) ;
struct TYPE_5__ {int order; } ;
struct TYPE_6__ {scalar_t__ ekey; scalar_t__ pos; TYPE_1__ order; } ;
typedef TYPE_2__ SQuery ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_2__*) ;
 int assert (int) ;

__attribute__((used)) static int32_t getForwardStepsInBlock(int32_t numOfPoints, __block_search_fn_t searchFn, SQuery *pQuery,
                                      int64_t *pData) {
  int32_t endPos = searchFn((char *)pData, numOfPoints, pQuery->ekey, pQuery->order.order);
  int32_t forwardStep = 0;

  if (endPos >= 0) {
    forwardStep = QUERY_IS_ASC_QUERY(pQuery) ? (endPos - pQuery->pos) : (pQuery->pos - endPos);
    assert(forwardStep >= 0);


    if (pData[endPos] == pQuery->ekey) {
      forwardStep += 1;
    }
  }
  return forwardStep;
}
