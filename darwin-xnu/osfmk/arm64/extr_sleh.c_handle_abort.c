
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int fault_status_t ;
typedef int arm_saved_state_t ;
typedef int (* abort_inspector_t ) (int ,int *,int *) ;
typedef int (* abort_handler_t ) (int *,int ,int ,int ,int ,int ) ;


 int ESR_ISS (int ) ;

__attribute__((used)) static void
handle_abort(arm_saved_state_t *state, uint32_t esr, vm_offset_t fault_addr, vm_offset_t recover,
    abort_inspector_t inspect_abort, abort_handler_t handler)
{
 fault_status_t fault_code;
 vm_prot_t fault_type;

 inspect_abort(ESR_ISS(esr), &fault_code, &fault_type);
 handler(state, esr, fault_addr, fault_code, fault_type, recover);
}
