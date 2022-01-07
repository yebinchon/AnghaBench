
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ currentIndex; int * currentProperty; int entry; } ;
typedef TYPE_1__* DTPropertyIterator ;
typedef int DTEntry ;


 int kSuccess ;

int
DTInitPropertyIterator(const DTEntry entry, DTPropertyIterator iter)
{

 iter->entry = entry;
 iter->currentProperty = ((void*)0);
 iter->currentIndex = 0;
 return kSuccess;
}
