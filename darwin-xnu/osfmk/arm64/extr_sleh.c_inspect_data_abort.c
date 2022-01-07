
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int uint32_t ;
typedef int fault_status_t ;
struct TYPE_3__ {int data_ex_cnt; } ;
struct TYPE_4__ {TYPE_1__ cpu_stat; } ;


 int ISS_DA_CM ;
 int ISS_DA_FSC (int) ;
 int ISS_DA_WNR ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 TYPE_2__* getCpuDatap () ;

__attribute__((used)) static void
inspect_data_abort(uint32_t iss, fault_status_t *fault_code, vm_prot_t *fault_type)
{
 getCpuDatap()->cpu_stat.data_ex_cnt++;
 *fault_code = ISS_DA_FSC(iss);


 if ((iss & ISS_DA_WNR) && !(iss & ISS_DA_CM)) {
  *fault_type = (VM_PROT_READ | VM_PROT_WRITE);
 } else {
  *fault_type = (VM_PROT_READ);
 }
}
