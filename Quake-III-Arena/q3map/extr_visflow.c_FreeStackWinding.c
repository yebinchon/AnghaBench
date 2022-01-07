
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_3__ {int* freewindings; int * windings; } ;
typedef TYPE_1__ pstack_t ;


 int Error (char*) ;

void FreeStackWinding (winding_t *w, pstack_t *stack)
{
 int i;

 i = w - stack->windings;

 if (i<0 || i>2)
  return;

 if (stack->freewindings[i])
  Error ("FreeStackWinding: allready free");
 stack->freewindings[i] = 1;
}
