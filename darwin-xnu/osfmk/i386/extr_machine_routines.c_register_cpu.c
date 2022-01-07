
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int * processor_t ;
typedef int kern_return_t ;
struct TYPE_6__ {int * core; } ;
struct TYPE_7__ {int cpu_number; int * cpu_console_buf; int * cpu_pmap; int * cpu_processor; TYPE_1__ lcpu; int cpu_phys_number; } ;
typedef TYPE_2__ cpu_data_t ;
typedef scalar_t__ boolean_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int * console_cpu_alloc (scalar_t__) ;
 int console_cpu_free (int *) ;
 TYPE_2__* cpu_data_alloc (scalar_t__) ;
 int * cpu_processor_alloc (scalar_t__) ;
 int cpu_processor_free (int *) ;
 int cpu_thread_alloc (int) ;
 scalar_t__ kpc_register_cpu (TYPE_2__*) ;
 int kpc_unregister_cpu (TYPE_2__*) ;
 int lapic_cpu_map (int ,int) ;
 int * pmap_cpu_alloc (scalar_t__) ;
 int pmap_cpu_free (int *) ;

__attribute__((used)) static kern_return_t
register_cpu(
        uint32_t lapic_id,
 processor_t *processor_out,
 boolean_t boot_cpu )
{
 int target_cpu;
 cpu_data_t *this_cpu_datap;

 this_cpu_datap = cpu_data_alloc(boot_cpu);
 if (this_cpu_datap == ((void*)0)) {
  return KERN_FAILURE;
 }
 target_cpu = this_cpu_datap->cpu_number;
 assert((boot_cpu && (target_cpu == 0)) ||
       (!boot_cpu && (target_cpu != 0)));

 lapic_cpu_map(lapic_id, target_cpu);




 this_cpu_datap->cpu_phys_number = lapic_id;

 this_cpu_datap->cpu_console_buf = console_cpu_alloc(boot_cpu);
 if (this_cpu_datap->cpu_console_buf == ((void*)0))
  goto failed;






 if (!boot_cpu) {
  cpu_thread_alloc(this_cpu_datap->cpu_number);
  if (this_cpu_datap->lcpu.core == ((void*)0))
   goto failed;







  this_cpu_datap->cpu_processor = cpu_processor_alloc(boot_cpu);
  if (this_cpu_datap->cpu_processor == ((void*)0))
   goto failed;





 }

 *processor_out = this_cpu_datap->cpu_processor;

 return KERN_SUCCESS;

failed:
 cpu_processor_free(this_cpu_datap->cpu_processor);



 console_cpu_free(this_cpu_datap->cpu_console_buf);




 return KERN_FAILURE;
}
