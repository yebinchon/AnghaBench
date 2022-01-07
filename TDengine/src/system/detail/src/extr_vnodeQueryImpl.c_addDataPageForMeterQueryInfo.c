
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int tFilePage ;
struct TYPE_3__ {int numOfPages; int numOfAlloc; int * pageList; } ;
typedef int SMeterQuerySupportObj ;
typedef TYPE_1__ SMeterQueryInfo ;


 int * allocNewPage (int *,int *) ;
 int * realloc (int *,int) ;

tFilePage *addDataPageForMeterQueryInfo(SMeterQueryInfo *pMeterQueryInfo, SMeterQuerySupportObj *pSupporter) {
  uint32_t pageId = 0;
  tFilePage *pPage = allocNewPage(pSupporter, &pageId);

  if (pMeterQueryInfo->numOfPages >= pMeterQueryInfo->numOfAlloc) {
    pMeterQueryInfo->numOfAlloc = pMeterQueryInfo->numOfAlloc << 1;
    pMeterQueryInfo->pageList = realloc(pMeterQueryInfo->pageList, sizeof(uint32_t) * pMeterQueryInfo->numOfAlloc);
  }

  pMeterQueryInfo->pageList[pMeterQueryInfo->numOfPages++] = pageId;
  return pPage;
}
