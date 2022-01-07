
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int nSize; } ;
typedef TYPE_1__ tSkipList ;
typedef int int32_t ;
struct TYPE_6__ {int num; int * cur; TYPE_1__* pSkipList; } ;
typedef TYPE_2__ SSkipListIterator ;


 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;

int32_t tSkipListIteratorReset(tSkipList *pSkipList, SSkipListIterator* iter) {
  if (pSkipList == ((void*)0)) {
    return -1;
  }

  iter->pSkipList = pSkipList;

  pthread_rwlock_rdlock(&pSkipList->lock);
  iter->cur = ((void*)0);
  iter->num = pSkipList->nSize;
  pthread_rwlock_unlock(&pSkipList->lock);

  return 0;
}
