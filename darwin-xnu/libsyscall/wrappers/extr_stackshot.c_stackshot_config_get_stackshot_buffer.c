
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sc_buffer; } ;
typedef TYPE_1__ stackshot_config_t ;



void *
stackshot_config_get_stackshot_buffer(stackshot_config_t *stackshot_config)
{
 stackshot_config_t *s_config;

 if (stackshot_config == ((void*)0)) {
  return ((void*)0);
 }
 s_config = (stackshot_config_t *) stackshot_config;

 return ((void *)s_config->sc_buffer);
}
