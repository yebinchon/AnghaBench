
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_5__ {int totalEntries; int numOfEntries; TYPE_1__* pNode; } ;
struct TYPE_4__ {int index; } ;
typedef TYPE_2__ SLoserTreeInfo ;


 int assert (int) ;

void tLoserTreeInit(SLoserTreeInfo* pTree) {
  assert((pTree->totalEntries & 0x01) == 0 && (pTree->numOfEntries << 1 == pTree->totalEntries));

  for (int32_t i = 0; i < pTree->totalEntries; ++i) {
    if (i < pTree->numOfEntries) {
      pTree->pNode[i].index = -1;
    } else {
      pTree->pNode[i].index = i - pTree->numOfEntries;
    }
  }
}
