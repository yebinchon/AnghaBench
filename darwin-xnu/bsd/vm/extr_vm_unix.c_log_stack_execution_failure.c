
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vm_prot_t ;
typedef int addr64_t ;
struct TYPE_2__ {char* p_comm; int p_pid; } ;


 size_t VM_PROT_ALL ;
 TYPE_1__* current_proc () ;
 int printf (char*,char*,int,int ,int ) ;
 int * prot_values ;

void
log_stack_execution_failure(addr64_t vaddr, vm_prot_t prot)
{
 printf("Data/Stack execution not permitted: %s[pid %d] at virtual address 0x%qx, protections were %s\n",
  current_proc()->p_comm, current_proc()->p_pid, vaddr, prot_values[prot & VM_PROT_ALL]);
}
