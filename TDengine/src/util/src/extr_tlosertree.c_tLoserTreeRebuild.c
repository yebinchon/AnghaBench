
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_5__ {int totalEntries; scalar_t__ numOfEntries; } ;
typedef TYPE_1__ SLoserTreeInfo ;


 int assert (int) ;
 int tLoserTreeAdjust (TYPE_1__*,scalar_t__) ;
 int tLoserTreeInit (TYPE_1__*) ;

void tLoserTreeRebuild(SLoserTreeInfo* pTree) {
  assert((pTree->totalEntries & 0x1) == 0);

  tLoserTreeInit(pTree);
  for (int32_t i = pTree->totalEntries - 1; i >= pTree->numOfEntries; i--) {
    tLoserTreeAdjust(pTree, i);
  }
}
