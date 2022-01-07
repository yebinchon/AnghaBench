
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {int superTableQ; int * interResultBuf; scalar_t__ bufLen; } ;
typedef TYPE_1__ SResultInfo ;


 int assert (int ) ;
 int * calloc (int,size_t) ;

void setResultInfoBuf(SResultInfo *pResInfo, int32_t size, bool superTable) {
  assert(pResInfo->interResultBuf == ((void*)0));

  pResInfo->bufLen = size;
  pResInfo->superTableQ = superTable;

  pResInfo->interResultBuf = calloc(1, (size_t)size);
}
