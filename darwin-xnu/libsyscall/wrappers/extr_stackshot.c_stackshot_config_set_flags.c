
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int sc_flags; } ;
typedef TYPE_1__ stackshot_config_t ;


 int EINVAL ;

int
stackshot_config_set_flags(stackshot_config_t *stackshot_config, uint32_t flags)
{
 stackshot_config_t *s_config;

 if (stackshot_config == ((void*)0)) {
  return EINVAL;
 }

 s_config = (stackshot_config_t *) stackshot_config;
 s_config->sc_flags = flags;

 return 0;
}
