
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct DTSavedScope {int dummy; } ;
struct TYPE_5__ {scalar_t__ currentIndex; int * currentEntry; int outerScope; int currentScope; TYPE_1__* savedScope; } ;
struct TYPE_4__ {struct TYPE_4__* nextScope; } ;
typedef TYPE_1__* DTSavedScopePtr ;
typedef TYPE_2__* DTEntryIterator ;


 int kSuccess ;
 int kfree (int ,int) ;
 scalar_t__ outer ;

int
DTRestartEntryIteration(DTEntryIterator iter)
{
 iter->currentEntry = ((void*)0);
 iter->currentIndex = 0;
 return kSuccess;
}
