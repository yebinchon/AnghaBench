
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int level; } ;
typedef TYPE_1__ scope_t ;



void scope_push(scope_t *scope)
{
   ++scope->level;
}
