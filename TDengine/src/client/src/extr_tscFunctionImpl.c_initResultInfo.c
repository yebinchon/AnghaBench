
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int initialized; int complete; int hasResult; scalar_t__ bufLen; int interResultBuf; scalar_t__ numOfRes; } ;
typedef TYPE_1__ SResultInfo ;


 int memset (int ,int ,size_t) ;

void initResultInfo(SResultInfo *pResInfo) {
  pResInfo->initialized = 1;

  pResInfo->complete = 0;
  pResInfo->hasResult = 0;
  pResInfo->numOfRes = 0;

  memset(pResInfo->interResultBuf, 0, (size_t)pResInfo->bufLen);
}
