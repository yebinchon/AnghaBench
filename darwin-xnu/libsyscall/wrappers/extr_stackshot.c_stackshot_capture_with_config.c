
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sc_buffer; uintptr_t sc_out_buffer_addr; uintptr_t sc_out_size_addr; scalar_t__ sc_size; } ;
typedef TYPE_1__ stackshot_config_t ;


 int EINVAL ;
 int STACKSHOT_CONFIG_TYPE ;
 int __stack_snapshot_with_config (int ,uintptr_t,int) ;
 int errno ;

int
stackshot_capture_with_config(stackshot_config_t *stackshot_config)
{
 int ret;
 stackshot_config_t *s_config;

 if (stackshot_config == ((void*)0)) {
  return EINVAL;
 }

 s_config = (stackshot_config_t *) stackshot_config;
 if (s_config->sc_buffer != 0) {
  return EINVAL;
 }

 s_config->sc_out_buffer_addr = (uintptr_t)&s_config->sc_buffer;
 s_config->sc_out_size_addr = (uintptr_t)&s_config->sc_size;
 ret = __stack_snapshot_with_config(STACKSHOT_CONFIG_TYPE, (uintptr_t)s_config, sizeof(stackshot_config_t));

 if (ret != 0) {
  ret = errno;
  s_config->sc_buffer = 0;
  s_config->sc_size = 0;
 }

 return ret;
}
