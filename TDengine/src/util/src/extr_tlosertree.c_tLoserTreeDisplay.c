
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_5__ {size_t totalEntries; TYPE_1__* pNode; } ;
struct TYPE_4__ {int index; } ;
typedef TYPE_2__ SLoserTreeInfo ;


 int printf (char*,...) ;

void tLoserTreeDisplay(SLoserTreeInfo* pTree) {
  printf("the value of loser tree:\t");
  for (int32_t i = 0; i < pTree->totalEntries; ++i) printf("%d\t", pTree->pNode[i].index);
  printf("\n");
}
