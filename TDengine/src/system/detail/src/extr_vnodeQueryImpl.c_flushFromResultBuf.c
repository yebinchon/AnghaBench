
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tFilePage ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_14__ {int len; } ;
struct TYPE_13__ {int lastPageId; int groupResultSize; int numOfGroupResultPages; int numOfPages; char* meterOutputMMapBuf; scalar_t__ numOfMeters; } ;
struct TYPE_12__ {int numOfOutputCols; int pointsToRead; TYPE_5__** sdata; } ;
struct TYPE_11__ {TYPE_1__* pCtx; } ;
struct TYPE_10__ {int outputBytes; } ;
typedef TYPE_2__ SQueryRuntimeEnv ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SMeterQuerySupportObj ;


 int DEFAULT_INTERN_BUF_SIZE ;
 int extendDiskBuf (TYPE_4__*,int) ;
 int memcpy (char*,TYPE_5__*,int) ;

void flushFromResultBuf(SMeterQuerySupportObj *pSupporter, const SQuery *pQuery, const SQueryRuntimeEnv *pRuntimeEnv) {
  int32_t numOfMeterResultBufPages = pSupporter->lastPageId + 1;
  int64_t dstSize = numOfMeterResultBufPages * DEFAULT_INTERN_BUF_SIZE +
                    pSupporter->groupResultSize * (pSupporter->numOfGroupResultPages + 1);

  int32_t requiredPages = pSupporter->numOfPages;
  if (requiredPages * DEFAULT_INTERN_BUF_SIZE < dstSize) {
    while (requiredPages * DEFAULT_INTERN_BUF_SIZE < dstSize) {
      requiredPages += pSupporter->numOfMeters;
    }

    extendDiskBuf(pSupporter, requiredPages);
  }

  char *lastPosition = pSupporter->meterOutputMMapBuf + DEFAULT_INTERN_BUF_SIZE * numOfMeterResultBufPages +
                       pSupporter->groupResultSize * pSupporter->numOfGroupResultPages;

  for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
    int32_t size = pRuntimeEnv->pCtx[i].outputBytes * pQuery->sdata[0]->len + sizeof(tFilePage);
    memcpy(lastPosition, pQuery->sdata[i], size);

    lastPosition += pRuntimeEnv->pCtx[i].outputBytes * pQuery->pointsToRead + sizeof(tFilePage);
  }

  pSupporter->numOfGroupResultPages += 1;
}
