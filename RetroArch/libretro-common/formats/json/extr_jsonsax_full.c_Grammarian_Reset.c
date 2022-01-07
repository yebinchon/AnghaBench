
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stackSize; int stackUsed; int * pStack; int * defaultStack; } ;
typedef TYPE_1__* Grammarian ;


 int NT_VALUE ;

__attribute__((used)) static void Grammarian_Reset(Grammarian grammarian, int isInitialized)
{




   if (!isInitialized)
   {
      grammarian->pStack = grammarian->defaultStack;
      grammarian->stackSize = sizeof(grammarian->defaultStack);
   }


   grammarian->pStack[0] = NT_VALUE;
   grammarian->stackUsed = 1;
}
