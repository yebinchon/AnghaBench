
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__** pBackward; struct TYPE_6__** pForward; } ;
typedef TYPE_1__ tSkipListNode ;
struct TYPE_7__ {TYPE_1__ pHead; } ;
typedef TYPE_2__ tSkipList ;
typedef size_t int32_t ;



void tSkipListDoInsert(tSkipList *pSkipList, tSkipListNode **forward, int32_t nLevel, tSkipListNode *pNode) {
  for (int32_t i = 0; i < nLevel; ++i) {
    tSkipListNode *x = forward[i];
    if (x != ((void*)0)) {
      pNode->pBackward[i] = x;
      if (x->pForward[i]) x->pForward[i]->pBackward[i] = pNode;

      pNode->pForward[i] = x->pForward[i];
      x->pForward[i] = pNode;
    } else {
      pSkipList->pHead.pForward[i] = pNode;
      pNode->pBackward[i] = &(pSkipList->pHead);
    }
  }
}
