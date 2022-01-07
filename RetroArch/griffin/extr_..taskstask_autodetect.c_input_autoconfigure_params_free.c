
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * autoconfig_directory; int * name; } ;
typedef TYPE_1__ autoconfig_params_t ;


 int free (int *) ;
 int string_is_empty (int *) ;

__attribute__((used)) static void input_autoconfigure_params_free(autoconfig_params_t *params)
{
   if (!params)
      return;
   if (!string_is_empty(params->name))
      free(params->name);
   if (!string_is_empty(params->autoconfig_directory))
      free(params->autoconfig_directory);
   params->name = ((void*)0);
   params->autoconfig_directory = ((void*)0);
}
