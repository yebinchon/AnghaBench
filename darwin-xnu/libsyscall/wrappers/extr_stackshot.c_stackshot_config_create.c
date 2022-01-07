
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sc_pid; scalar_t__ sc_size; scalar_t__ sc_buffer; scalar_t__ sc_delta_timestamp; scalar_t__ sc_flags; } ;
typedef TYPE_1__ stackshot_config_t ;


 TYPE_1__* malloc (int) ;

stackshot_config_t *
stackshot_config_create(void)
{
 stackshot_config_t *s_config;

 s_config = malloc(sizeof(stackshot_config_t));
 if (s_config == ((void*)0)) {
  return ((void*)0);
 }

 s_config->sc_pid = -1;
 s_config->sc_flags = 0;
 s_config->sc_delta_timestamp = 0;
 s_config->sc_buffer = 0;
 s_config->sc_size = 0;

 return s_config;
}
