
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct DTSavedScope {int dummy; } ;
struct TYPE_5__ {scalar_t__ currentIndex; TYPE_1__* savedScope; int * currentEntry; int * currentScope; } ;
struct TYPE_4__ {scalar_t__ index; int * entry; int * scope; struct TYPE_4__* nextScope; } ;
typedef TYPE_1__* DTSavedScopePtr ;
typedef TYPE_2__* DTEntryIterator ;
typedef int * DTEntry ;


 int kError ;
 int kSuccess ;
 scalar_t__ kalloc (int) ;

int
DTEnterEntry(DTEntryIterator iter, DTEntry childEntry)
{
 DTSavedScopePtr newScope;

 if (childEntry == ((void*)0)) {
  return kError;
 }
 newScope = (DTSavedScopePtr) kalloc(sizeof(struct DTSavedScope));
 newScope->nextScope = iter->savedScope;
 newScope->scope = iter->currentScope;
 newScope->entry = iter->currentEntry;
 newScope->index = iter->currentIndex;

 iter->currentScope = childEntry;
 iter->currentEntry = ((void*)0);
 iter->savedScope = newScope;
 iter->currentIndex = 0;

 return kSuccess;
}
