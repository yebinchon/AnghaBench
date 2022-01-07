
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int order; int vnodeIndex; } ;
struct TYPE_5__ {scalar_t__ numOfPages; int reverseFillRes; int numOfRes; int reverseIndex; TYPE_1__ cur; scalar_t__ queryRangeSet; void* skey; void* lastKey; void* ekey; } ;
typedef void* TSKEY ;
typedef TYPE_2__ SMeterQueryInfo ;



void changeMeterQueryInfoForSuppleQuery(SMeterQueryInfo *pMeterQueryInfo, TSKEY skey, TSKEY ekey) {
  if (pMeterQueryInfo == ((void*)0)) {
    return;
  }

  pMeterQueryInfo->skey = skey;
  pMeterQueryInfo->ekey = ekey;
  pMeterQueryInfo->lastKey = pMeterQueryInfo->skey;

  pMeterQueryInfo->queryRangeSet = 0;
  pMeterQueryInfo->cur.order = pMeterQueryInfo->cur.order ^ 1;
  pMeterQueryInfo->cur.vnodeIndex = -1;


  if (pMeterQueryInfo->numOfPages == 0) {
    pMeterQueryInfo->reverseFillRes = 0;
  } else {
    pMeterQueryInfo->reverseIndex = pMeterQueryInfo->numOfRes;
    pMeterQueryInfo->reverseFillRes = 1;
  }
}
