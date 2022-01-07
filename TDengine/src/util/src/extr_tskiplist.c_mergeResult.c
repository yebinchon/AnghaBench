
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** pForward; int key; } ;
typedef TYPE_1__ tSkipListNode ;
typedef int tSkipListKey ;
typedef size_t int32_t ;
typedef size_t (* __compar_fn_t ) (int *,int const*) ;



int32_t mergeResult(const tSkipListKey *pKey, int32_t numOfKey, tSkipListNode ***pRes, __compar_fn_t comparator,
                    tSkipListNode *pNode) {
  int32_t i = 0, j = 0;

  while (i < numOfKey && pNode != ((void*)0)) {
    int32_t ret = comparator(&pNode->key, &pKey[i]);
    if (ret < 0) {
      (*pRes)[j++] = pNode;
      pNode = pNode->pForward[0];
    } else if (ret == 0) {
      pNode = pNode->pForward[0];
    } else {
      i++;
    }
  }

  while (pNode != ((void*)0)) {
    (*pRes)[j++] = pNode;
    pNode = pNode->pForward[0];
  }
  return j;
}
