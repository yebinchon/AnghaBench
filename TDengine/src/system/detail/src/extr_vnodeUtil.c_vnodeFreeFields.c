
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {size_t numOfBlocks; int * pFields; } ;
typedef TYPE_1__ SQuery ;


 int tfree (int ) ;

void vnodeFreeFields(SQuery* pQuery) {
  if (pQuery == ((void*)0) || pQuery->pFields == ((void*)0)) {
    return;
  }

  for (int32_t i = 0; i < pQuery->numOfBlocks; ++i) {
    tfree(pQuery->pFields[i]);
  }





  pQuery->pFields = ((void*)0);
  pQuery->numOfBlocks = 0;
}
