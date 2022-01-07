
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_17__ {scalar_t__ numOfPoints; scalar_t__* offset; } ;
struct TYPE_16__ {scalar_t__ colId; scalar_t__ bytes; int type; } ;
struct TYPE_15__ {scalar_t__ numOfColumns; TYPE_6__* schema; } ;
struct TYPE_14__ {scalar_t__ numOfCols; TYPE_2__* colList; } ;
struct TYPE_13__ {TYPE_4__* pQuery; } ;
struct TYPE_11__ {scalar_t__ colId; } ;
struct TYPE_12__ {scalar_t__ colIdx; TYPE_1__ data; } ;
typedef TYPE_3__ SQueryRuntimeEnv ;
typedef TYPE_4__ SQuery ;
typedef TYPE_5__ SMeterObj ;
typedef TYPE_6__ SColumn ;
typedef TYPE_7__ SCacheBlock ;


 int memcpy (char*,scalar_t__,scalar_t__) ;
 int setNull (char*,int ,scalar_t__) ;

__attribute__((used)) static void getOneRowFromCacheBlock(SQueryRuntimeEnv *pRuntimeEnv, SMeterObj *pMeterObj, SCacheBlock *pBlock,
                                    char **dst, int32_t pos) {
  SQuery *pQuery = pRuntimeEnv->pQuery;





  if (pos > pBlock->numOfPoints) {
    pos = pBlock->numOfPoints;
  }

  for (int32_t i = 0; i < pQuery->numOfCols; ++i) {
    int32_t colIdx = pQuery->colList[i].colIdx;
    int32_t colId = pQuery->colList[i].data.colId;

    SColumn *pCols = &pMeterObj->schema[colIdx];

    if (colIdx < 0 || colIdx >= pMeterObj->numOfColumns || pCols->colId != colId) {
      setNull(dst[i], pCols->type, pCols->bytes);
    } else {
      memcpy(dst[i], pBlock->offset[colIdx] + pos * pCols->bytes, pCols->bytes);
    }
  }
}
