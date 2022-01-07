
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tSkipListNode ;
struct TYPE_8__ {int queryCount; } ;
struct TYPE_9__ {TYPE_1__ state; } ;
typedef TYPE_2__ tSkipList ;
struct TYPE_10__ {int upperBndRelOptr; int upperBnd; int lowerBndRelOptr; int lowerBnd; } ;
typedef TYPE_3__ tSKipListQueryCond ;
typedef int int32_t ;


 int tSkipListEndParQuery (TYPE_2__*,int *,int *,int ,int ***) ;
 int * tSkipListParQuery (TYPE_2__*,int *,int ) ;

int32_t tSkipListRangeQuery(tSkipList *pSkipList, tSKipListQueryCond *pCond, tSkipListNode ***pRes) {
  pSkipList->state.queryCount++;
  tSkipListNode *pStart = tSkipListParQuery(pSkipList, &pCond->lowerBnd, pCond->lowerBndRelOptr);
  if (pStart == 0) {
    *pRes = ((void*)0);
    return 0;
  }

  return tSkipListEndParQuery(pSkipList, pStart, &pCond->upperBnd, pCond->upperBndRelOptr, pRes);
}
