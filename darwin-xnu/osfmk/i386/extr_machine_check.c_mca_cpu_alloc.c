
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int mca_state_t ;
typedef int mca_mci_bank_t ;
struct TYPE_4__ {int cpu_number; int * cpu_mca_state; } ;
typedef TYPE_1__ cpu_data_t ;


 int bzero (void*,int) ;
 TYPE_1__* cpu_datap (int ) ;
 int * kalloc (int) ;
 int master_cpu ;
 int mca_error_bank_count ;
 int printf (char*,int) ;

void
mca_cpu_alloc(cpu_data_t *cdp)
{
 vm_size_t mca_state_size;




 mca_state_size = sizeof(mca_state_t) +
    sizeof(mca_mci_bank_t) * mca_error_bank_count;
 cdp->cpu_mca_state = kalloc(mca_state_size);
 if (cdp->cpu_mca_state == ((void*)0)) {
  printf("mca_cpu_alloc() failed for cpu %d\n", cdp->cpu_number);
  return;
 }
 bzero((void *) cdp->cpu_mca_state, mca_state_size);





 if (cpu_datap(master_cpu)->cpu_mca_state == ((void*)0))
  mca_cpu_alloc(cpu_datap(master_cpu));
}
