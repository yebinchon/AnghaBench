
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ groups_count; int * groups; scalar_t__ elements_count; int * elements; int * param; scalar_t__ level; } ;
typedef TYPE_1__ scope_t ;



void scope_init(scope_t *scope)
{
   scope->level = 0;

   scope->param = ((void*)0);
   scope->elements = ((void*)0);
   scope->elements_count = 0;
   scope->groups = ((void*)0);
   scope->groups_count = 0;
}
