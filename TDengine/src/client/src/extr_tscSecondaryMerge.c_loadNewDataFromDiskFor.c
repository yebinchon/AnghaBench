
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_18__ {int maxCapacity; } ;
struct TYPE_17__ {int numOfElems; int data; } ;
struct TYPE_12__ {TYPE_1__* pFlushoutInfo; } ;
struct TYPE_13__ {TYPE_2__ flushoutData; } ;
struct TYPE_16__ {TYPE_8__* pColModel; TYPE_3__ fileMeta; } ;
struct TYPE_15__ {int rowIdx; int pageId; size_t flushoutIdx; TYPE_6__* pMemBuffer; TYPE_7__ filePage; } ;
struct TYPE_14__ {int numOfCompleted; int numOfBuffer; } ;
struct TYPE_11__ {int numOfPages; } ;
typedef TYPE_4__ SLocalReducer ;
typedef TYPE_5__ SLocalDataSource ;


 int printf (char*) ;
 int tColModelDisplay (TYPE_8__*,int ,int ,int ) ;
 int tExtMemBufferLoadData (TYPE_6__*,TYPE_7__*,size_t,int) ;

int32_t loadNewDataFromDiskFor(SLocalReducer *pLocalReducer, SLocalDataSource *pOneInterDataSrc,
                               bool *needAdjustLoserTree) {
  pOneInterDataSrc->rowIdx = 0;
  pOneInterDataSrc->pageId += 1;

  if (pOneInterDataSrc->pageId <
      pOneInterDataSrc->pMemBuffer->fileMeta.flushoutData.pFlushoutInfo[pOneInterDataSrc->flushoutIdx].numOfPages) {
    tExtMemBufferLoadData(pOneInterDataSrc->pMemBuffer, &(pOneInterDataSrc->filePage), pOneInterDataSrc->flushoutIdx,
                          pOneInterDataSrc->pageId);






    *needAdjustLoserTree = 1;
  } else {
    pLocalReducer->numOfCompleted += 1;

    pOneInterDataSrc->rowIdx = -1;
    pOneInterDataSrc->pageId = -1;
    *needAdjustLoserTree = 1;
  }

  return pLocalReducer->numOfBuffer;
}
