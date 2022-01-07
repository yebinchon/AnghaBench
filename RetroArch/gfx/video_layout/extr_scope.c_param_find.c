
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* param; } ;
typedef TYPE_1__ scope_t ;
struct TYPE_6__ {int level; struct TYPE_6__* prev; int name; } ;
typedef TYPE_2__ param_t ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static param_t *param_find(scope_t *scope, const char *name, int level)
{
   param_t *param = scope->param;

   while (param && param->level >= level)
   {
      if (strcmp(param->name, name) == 0)
         return param;
      param = param->prev;
   }

   return ((void*)0);
}
