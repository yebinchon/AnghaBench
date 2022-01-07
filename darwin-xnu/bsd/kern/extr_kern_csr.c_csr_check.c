
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int csr_config_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ boot_args ;
struct TYPE_4__ {scalar_t__ bootArgs; } ;


 int CSR_ALLOW_APPLE_INTERNAL ;
 int CSR_ALLOW_DEVICE_CONFIGURATION ;
 int CSR_ALLOW_KERNEL_DEBUGGER ;
 int CSR_ALLOW_UNTRUSTED_KEXTS ;
 int CSR_ALWAYS_ENFORCED_FLAGS ;
 int EPERM ;
 TYPE_2__ PE_state ;
 scalar_t__ csr_allow_all ;
 int csr_get_active_config (int*) ;
 int kBootArgsFlagCSRConfigMode ;

int
csr_check(csr_config_t mask)
{
 boot_args *args = (boot_args *)PE_state.bootArgs;
 if (mask & CSR_ALLOW_DEVICE_CONFIGURATION)
  return (args->flags & kBootArgsFlagCSRConfigMode) ? 0 : EPERM;

 csr_config_t config;
 int ret = csr_get_active_config(&config);
 if (ret) {
  return ret;
 }






 if ((config & (CSR_ALLOW_UNTRUSTED_KEXTS|CSR_ALLOW_APPLE_INTERNAL)) != 0)
  config |= CSR_ALLOW_KERNEL_DEBUGGER;

 ret = ((config & mask) == mask) ? 0 : EPERM;
 if (ret == EPERM) {

  if (csr_allow_all && (mask & CSR_ALWAYS_ENFORCED_FLAGS) == 0)
   ret = 0;
 }

 return ret;
}
