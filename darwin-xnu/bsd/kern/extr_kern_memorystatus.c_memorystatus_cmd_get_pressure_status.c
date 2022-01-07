
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int PRIV_VM_PRESSURE ;
 scalar_t__ kVMPressureNormal ;
 int kauth_cred_get () ;
 scalar_t__ memorystatus_vm_pressure_level ;
 int priv_check_cred (int ,int ,int ) ;

__attribute__((used)) static int
memorystatus_cmd_get_pressure_status(int32_t *retval) {
 int error;


 error = priv_check_cred(kauth_cred_get(), PRIV_VM_PRESSURE, 0);
 if (error) {
  return (error);
 }


 *retval = (kVMPressureNormal != memorystatus_vm_pressure_level) ? 1 : 0;

 return error;
}
