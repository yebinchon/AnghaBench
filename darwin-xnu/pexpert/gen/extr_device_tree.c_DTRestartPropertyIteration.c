
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ currentIndex; int * currentProperty; } ;
typedef TYPE_1__* DTPropertyIterator ;


 int kSuccess ;

int
DTRestartPropertyIteration(DTPropertyIterator iter)
{
 iter->currentProperty = ((void*)0);
 iter->currentIndex = 0;
 return kSuccess;
}
