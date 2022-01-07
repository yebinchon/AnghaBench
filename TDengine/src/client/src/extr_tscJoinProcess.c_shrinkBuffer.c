
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocSize; int threshold; int rawBuf; } ;
typedef TYPE_1__ STSList ;


 int MEM_BUF_SIZE ;
 int realloc (int ,int) ;

__attribute__((used)) static void shrinkBuffer(STSList* ptsData) {

  if (ptsData->allocSize >= ptsData->threshold * 2) {
    ptsData->rawBuf = realloc(ptsData->rawBuf, MEM_BUF_SIZE);
    ptsData->allocSize = MEM_BUF_SIZE;
  }
}
