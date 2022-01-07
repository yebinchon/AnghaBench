
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* netplay_input_state_t ;
struct TYPE_3__ {int used; struct TYPE_3__* next; } ;



__attribute__((used)) static void clear_input(netplay_input_state_t istate)
{
   while (istate)
   {
      istate->used = 0;
      istate = istate->next;
   }
}
