
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t int32_t ;
struct TYPE_7__ {int vnodeIndex; } ;
struct TYPE_10__ {size_t numOfAlloc; int * resultInfo; TYPE_1__ cur; scalar_t__ lastResRows; void* pageList; scalar_t__ numOfPages; void* lastKey; void* ekey; void* skey; } ;
struct TYPE_9__ {size_t numOfOutputCols; TYPE_2__* pSelectExpr; } ;
struct TYPE_8__ {int interResBytes; } ;
typedef void* TSKEY ;
typedef int SResultInfo ;
typedef TYPE_3__ SQuery ;
typedef TYPE_4__ SMeterQueryInfo ;


 size_t INIT_ALLOCATE_DISK_PAGES ;
 void* calloc (size_t,int) ;
 int setResultInfoBuf (int *,int ,int) ;

SMeterQueryInfo *createMeterQueryInfo(SQuery *pQuery, TSKEY skey, TSKEY ekey) {
  SMeterQueryInfo *pMeterQueryInfo = calloc(1, sizeof(SMeterQueryInfo));

  pMeterQueryInfo->skey = skey;
  pMeterQueryInfo->ekey = ekey;
  pMeterQueryInfo->lastKey = skey;

  pMeterQueryInfo->numOfPages = 0;
  pMeterQueryInfo->numOfAlloc = INIT_ALLOCATE_DISK_PAGES;
  pMeterQueryInfo->pageList = calloc(pMeterQueryInfo->numOfAlloc, sizeof(uint32_t));
  pMeterQueryInfo->lastResRows = 0;

  pMeterQueryInfo->cur.vnodeIndex = -1;

  pMeterQueryInfo->resultInfo = calloc((size_t)pQuery->numOfOutputCols, sizeof(SResultInfo));
  for (int32_t i = 0; i < pQuery->numOfOutputCols; ++i) {
    SResultInfo *pResInfo = &pMeterQueryInfo->resultInfo[i];
    setResultInfoBuf(pResInfo, pQuery->pSelectExpr[i].interResBytes, 1);
  }

  return pMeterQueryInfo;
}
