
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sc_size; scalar_t__ sc_buffer; } ;
typedef TYPE_1__ stackshot_config_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;


 int EINVAL ;
 int free (TYPE_1__*) ;
 int mach_task_self () ;
 int mach_vm_deallocate (int ,int ,int ) ;

int
stackshot_config_dealloc(stackshot_config_t *stackshot_config)
{
 stackshot_config_t *s_config;

 if (stackshot_config == ((void*)0)) {
  return EINVAL;
 }
 s_config = (stackshot_config_t *) stackshot_config;

 if (s_config->sc_size && s_config->sc_buffer) {
  mach_vm_deallocate(mach_task_self(), (mach_vm_offset_t)s_config->sc_buffer, (mach_vm_size_t)s_config->sc_size);
 }

 s_config->sc_buffer = 0;
 s_config->sc_size = 0;

 free(s_config);
 return 0;
}
