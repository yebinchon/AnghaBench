
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nChildren; } ;
struct TYPE_4__ {int currentIndex; int * currentEntry; TYPE_2__* currentScope; } ;
typedef TYPE_1__* DTEntryIterator ;
typedef int * DTEntry ;


 int * GetFirstChild (TYPE_2__*) ;
 int * GetNextChild (int *) ;
 int kIterationDone ;
 int kSuccess ;

int
DTIterateEntries(DTEntryIterator iter, DTEntry *nextEntry)
{
 if (iter->currentIndex >= iter->currentScope->nChildren) {
  *nextEntry = ((void*)0);
  return kIterationDone;
 } else {
  iter->currentIndex++;
  if (iter->currentIndex == 1) {
   iter->currentEntry = GetFirstChild(iter->currentScope);
  } else {
   iter->currentEntry = GetNextChild(iter->currentEntry);
  }
  *nextEntry = iter->currentEntry;
  return kSuccess;
 }
}
