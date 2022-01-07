
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ currentIndex; int * savedScope; int * currentEntry; void* currentScope; void* outerScope; } ;
typedef void* RealDTEntry ;
typedef TYPE_1__* DTEntryIterator ;
typedef int * DTEntry ;


 int DTInitialized ;
 void* DTRootNode ;
 int kError ;
 int kSuccess ;

int
DTInitEntryIterator(const DTEntry startEntry, DTEntryIterator iter)
{
 if (!DTInitialized) {
  return kError;
 }

 if (startEntry != ((void*)0)) {
  iter->outerScope = (RealDTEntry) startEntry;
  iter->currentScope = (RealDTEntry) startEntry;
 } else {
  iter->outerScope = DTRootNode;
  iter->currentScope = DTRootNode;
 }
 iter->currentEntry = ((void*)0);
 iter->savedScope = ((void*)0);
 iter->currentIndex = 0;

 return kSuccess;
}
