
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ allocSize; scalar_t__ len; char* rawBuf; } ;
typedef TYPE_1__ STSList ;


 char* realloc (char*,size_t) ;

__attribute__((used)) static void expandBuffer(STSList* ptsData, int32_t inputSize) {
  if (ptsData->allocSize - ptsData->len < inputSize) {
    int32_t newSize = inputSize + ptsData->len;
    char* tmp = realloc(ptsData->rawBuf, (size_t)newSize);
    if (tmp == ((void*)0)) {

    }

    ptsData->rawBuf = tmp;
    ptsData->allocSize = newSize;
  }
}
