
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int value; int generator; } ;
typedef TYPE_1__ param_t ;


 int free (int ) ;

__attribute__((used)) static void param_deinit(param_t *param)
{
   free(param->generator);
   free(param->value);
   free(param->name);
}
