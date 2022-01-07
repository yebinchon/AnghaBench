
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_3__ {int * windings; scalar_t__* freewindings; } ;
typedef TYPE_1__ pstack_t ;


 int Error (char*) ;

winding_t *AllocStackWinding (pstack_t *stack)
{
 int i;

 for (i=0 ; i<3 ; i++)
 {
  if (stack->freewindings[i])
  {
   stack->freewindings[i] = 0;
   return &stack->windings[i];
  }
 }

 Error ("AllocStackWinding: failed");

 return ((void*)0);
}
