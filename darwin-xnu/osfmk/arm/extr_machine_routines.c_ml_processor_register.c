
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct processor {int dummy; } ;
typedef scalar_t__ processor_t ;
struct TYPE_11__ {scalar_t__ phys_id; scalar_t__ log_id; scalar_t__* idle_tickle; scalar_t__ l2_access_penalty; int regmap_paddr; scalar_t__ platform_error_handler; int idle_timer_refcon; scalar_t__ idle_timer; int powergate_stub_addr; scalar_t__ powergate_latency; int platform_cache_dispatch; scalar_t__ processor_idle; int cpu_id; } ;
typedef TYPE_1__ ml_processor_info_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipi_handler_t ;
typedef scalar_t__ idle_tickle_t ;
struct TYPE_12__ {void* cpu_console_buf; scalar_t__ cpu_phys_id; int cpu_number; scalar_t__ cpu_processor; scalar_t__ cpu_l2_access_penalty; int cpu_regmap_paddr; void* platform_error_handler; int idle_timer_refcon; void* idle_timer_notify; int cpu_reset_assist; int cpu_idle_latency; int cpu_cache_dispatch; void* cpu_idle_notify; int cpu_id; } ;
typedef TYPE_2__ cpu_data_t ;
typedef scalar_t__ boolean_t ;


 TYPE_2__ BootCpuData ;
 scalar_t__ FALSE ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MAX_CPUS ;
 scalar_t__ TRUE ;
 scalar_t__ avail_cpus ;
 void* console_cpu_alloc (scalar_t__) ;
 TYPE_2__* cpu_data_alloc (scalar_t__) ;
 int cpu_data_free (TYPE_2__*) ;
 int cpu_data_init (TYPE_2__*) ;
 scalar_t__ cpu_data_register (TYPE_2__*) ;
 scalar_t__ cpu_idle_tickle ;
 int cpu_signal_handler ;
 int early_random_cpu_init (int ) ;
 scalar_t__ kpc_register_cpu (TYPE_2__*) ;
 int kpc_unregister_cpu (TYPE_2__*) ;
 int kvtophys (int ) ;
 int master_processor ;
 scalar_t__ ml_get_boot_cpu_number () ;
 scalar_t__ ml_get_max_cpu_number () ;
 int nanoseconds_to_absolutetime (int ,int *) ;
 int panic (char*,scalar_t__,scalar_t__) ;
 int processor_init (struct processor*,int ,int ) ;
 int processor_pset (int ) ;
 int processor_set_primary (scalar_t__,int ) ;

kern_return_t
ml_processor_register(
                      ml_processor_info_t * in_processor_info,
                      processor_t * processor_out,
                      ipi_handler_t * ipi_handler)
{
 cpu_data_t *this_cpu_datap;
 boolean_t is_boot_cpu;

 if (in_processor_info->phys_id >= MAX_CPUS) {
  panic("phys_id %u is too large for MAX_CPUS (%u)", in_processor_info->phys_id, MAX_CPUS);
 }


 if ((in_processor_info->phys_id >= avail_cpus) ||
     (in_processor_info->log_id > (uint32_t)ml_get_max_cpu_number()))
  return KERN_FAILURE;

 if (in_processor_info->log_id != (uint32_t)ml_get_boot_cpu_number()) {
  is_boot_cpu = FALSE;
  this_cpu_datap = cpu_data_alloc(FALSE);
  cpu_data_init(this_cpu_datap);
 } else {
  this_cpu_datap = &BootCpuData;
  is_boot_cpu = TRUE;
 }

 this_cpu_datap->cpu_id = in_processor_info->cpu_id;

 this_cpu_datap->cpu_console_buf = console_cpu_alloc(is_boot_cpu);
 if (this_cpu_datap->cpu_console_buf == (void *)(((void*)0)))
  goto processor_register_error;

 if (!is_boot_cpu) {
  if (cpu_data_register(this_cpu_datap) != KERN_SUCCESS)
   goto processor_register_error;
 }

 this_cpu_datap->cpu_idle_notify = (void *) in_processor_info->processor_idle;
 this_cpu_datap->cpu_cache_dispatch = in_processor_info->platform_cache_dispatch;
 nanoseconds_to_absolutetime((uint64_t) in_processor_info->powergate_latency, &this_cpu_datap->cpu_idle_latency);
 this_cpu_datap->cpu_reset_assist = kvtophys(in_processor_info->powergate_stub_addr);

 this_cpu_datap->idle_timer_notify = (void *) in_processor_info->idle_timer;
 this_cpu_datap->idle_timer_refcon = in_processor_info->idle_timer_refcon;

 this_cpu_datap->platform_error_handler = (void *) in_processor_info->platform_error_handler;
 this_cpu_datap->cpu_regmap_paddr = in_processor_info->regmap_paddr;
 this_cpu_datap->cpu_phys_id = in_processor_info->phys_id;
 this_cpu_datap->cpu_l2_access_penalty = in_processor_info->l2_access_penalty;

 if (!is_boot_cpu) {
  processor_init((struct processor *)this_cpu_datap->cpu_processor,
                 this_cpu_datap->cpu_number, processor_pset(master_processor));

  if (this_cpu_datap->cpu_l2_access_penalty) {






   processor_set_primary(this_cpu_datap->cpu_processor,
                         master_processor);
  }
 }

 *processor_out = this_cpu_datap->cpu_processor;
 *ipi_handler = cpu_signal_handler;
 if (in_processor_info->idle_tickle != (idle_tickle_t *) ((void*)0))
  *in_processor_info->idle_tickle = (idle_tickle_t) cpu_idle_tickle;






 if (!is_boot_cpu)
  early_random_cpu_init(this_cpu_datap->cpu_number);

 return KERN_SUCCESS;

processor_register_error:



 if (!is_boot_cpu)
  cpu_data_free(this_cpu_datap);
 return KERN_FAILURE;
}
