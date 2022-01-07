
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_7__ {int numOfBlocks; int currentSlot; } ;
struct TYPE_6__ {scalar_t__ lastKey; scalar_t__ pCache; } ;
typedef scalar_t__ TSKEY ;
typedef int SQuery ;
typedef TYPE_1__ SMeterObj ;
typedef TYPE_2__ SCacheInfo ;
typedef int SCacheBlock ;


 int QUERY_NO_DATA_TO_CHECK ;
 int * getCacheDataBlock (TYPE_1__*,int *,int) ;
 int getFirstCacheSlot (int,int,TYPE_2__*) ;
 int getQueryRange (int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ getTimestampInCacheBlock (int *,int ) ;
 int setQueryStatus (int *,int ) ;

__attribute__((used)) static bool cacheBoundaryCheck(SQuery *pQuery, SMeterObj *pMeterObj) {




  SCacheInfo * pCacheInfo = (SCacheInfo *)pMeterObj->pCache;
  SCacheBlock *pBlock = ((void*)0);


  TSKEY keyFirst = 0;
  TSKEY keyLast = pMeterObj->lastKey;

  while (1) {

    int32_t numOfBlocks = pCacheInfo->numOfBlocks;
    int32_t currentSlot = pCacheInfo->currentSlot;


    if (numOfBlocks == 0) {
      return 0;
    }

    int32_t first = getFirstCacheSlot(numOfBlocks, currentSlot, pCacheInfo);





    if ((pBlock = getCacheDataBlock(pMeterObj, pQuery, first)) != ((void*)0)) {
      keyFirst = getTimestampInCacheBlock(pBlock, 0);
      break;
    } else {



      if (numOfBlocks == 1) {
        return 0;
      }
    }
  }

  TSKEY min, max;
  getQueryRange(pQuery, &min, &max);






  if (max < keyFirst || min > keyLast) {
    setQueryStatus(pQuery, QUERY_NO_DATA_TO_CHECK);
    return 0;
  }

  return 1;
}
