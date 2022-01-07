
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_pid; } ;
typedef TYPE_1__ stackshot_config_t ;


 int EINVAL ;

int
stackshot_config_set_pid(stackshot_config_t *stackshot_config, int pid)
{
 stackshot_config_t *s_config;

 if (stackshot_config == ((void*)0)) {
  return EINVAL;
 }

 s_config = (stackshot_config_t *) stackshot_config;
 s_config->sc_pid = pid;

 return 0;
}
