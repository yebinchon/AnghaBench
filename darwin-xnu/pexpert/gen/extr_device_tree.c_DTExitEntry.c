
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct DTSavedScope {int dummy; } ;
struct TYPE_6__ {int currentEntry; int currentIndex; int currentScope; TYPE_1__* savedScope; } ;
struct TYPE_5__ {int index; int entry; int scope; struct TYPE_5__* nextScope; } ;
typedef TYPE_1__* DTSavedScopePtr ;
typedef TYPE_2__* DTEntryIterator ;
typedef int DTEntry ;


 int kError ;
 int kSuccess ;
 int kfree (TYPE_1__*,int) ;

int
DTExitEntry(DTEntryIterator iter, DTEntry *currentPosition)
{
 DTSavedScopePtr newScope;

 newScope = iter->savedScope;
 if (newScope == ((void*)0)) {
  return kError;
 }
 iter->savedScope = newScope->nextScope;
 iter->currentScope = newScope->scope;
 iter->currentEntry = newScope->entry;
 iter->currentIndex = newScope->index;
 *currentPosition = iter->currentEntry;

 kfree(newScope, sizeof(struct DTSavedScope));

 return kSuccess;
}
