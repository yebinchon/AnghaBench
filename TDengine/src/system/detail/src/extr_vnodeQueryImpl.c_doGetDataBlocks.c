
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_11__ {int numOfPoints; } ;
struct TYPE_10__ {size_t numOfColumns; TYPE_1__* schema; } ;
struct TYPE_9__ {TYPE_2__** colDataBuffer; TYPE_4__* pMeterObj; } ;
struct TYPE_8__ {char* data; } ;
struct TYPE_7__ {size_t colId; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SMeterObj ;
typedef TYPE_5__ SCacheBlock ;


 char* doGetDataBlockImpl (char*,size_t,int) ;
 int setNullN (char*,int ,int ,int ) ;

__attribute__((used)) static char *doGetDataBlocks(bool isDiskFileBlock, SQueryRuntimeEnv *pRuntimeEnv, char *data, int32_t colIdx,
                             int32_t colId, int16_t type, int16_t bytes, int32_t tmpBufIndex) {
  char *pData = ((void*)0);

  if (isDiskFileBlock) {
    pData = doGetDataBlockImpl(data, colIdx, isDiskFileBlock);
  } else {
    SCacheBlock *pCacheBlock = (SCacheBlock *)data;
    SMeterObj * pMeter = pRuntimeEnv->pMeterObj;

    if (colIdx < 0 || pMeter->numOfColumns <= colIdx || pMeter->schema[colIdx].colId != colId) {

      pData = pRuntimeEnv->colDataBuffer[tmpBufIndex]->data;
      setNullN(pData, type, bytes, pCacheBlock->numOfPoints);
    } else {
      pData = doGetDataBlockImpl(data, colIdx, isDiskFileBlock);
    }
  }

  return pData;
}
