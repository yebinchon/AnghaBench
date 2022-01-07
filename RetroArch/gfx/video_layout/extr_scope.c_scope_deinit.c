
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int elements_count; int groups_count; TYPE_2__* param; TYPE_2__* groups; TYPE_2__* elements; } ;
typedef TYPE_1__ scope_t ;
struct TYPE_9__ {struct TYPE_9__* prev; } ;
typedef TYPE_2__ param_t ;


 int element_deinit (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int param_deinit (TYPE_2__*) ;
 int view_deinit (TYPE_2__*) ;

void scope_deinit(scope_t *scope)
{
   int i;
   param_t *param;
   param_t *prev;

   for (i = 0; i < scope->elements_count; ++i)
      element_deinit(&scope->elements[i]);
   free(scope->elements);

   for (i = 0; i < scope->groups_count; ++i)
      view_deinit(&scope->groups[i]);
   free(scope->groups);

   for (param = scope->param; param; param = prev)
   {
      prev = param->prev;
      param_deinit(param);
      free(param);
   }
}
