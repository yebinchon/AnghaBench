
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef size_t uint32_t ;
struct pmap {int dummy; } ;
struct TYPE_4__ {scalar_t__* cpu_asid_high_bits; int cpu_number; struct pmap* cpu_nested_pmap; } ;
typedef TYPE_1__ pmap_cpu_data_t ;
struct TYPE_5__ {int cpu_idle_latency; int cpu_idle_pop; int cpu_reset_type; int cpu_reset_handler; int cpu_reset_assist; int cpu_regmap_paddr; int cpu_phys_id; int cpu_sleep_token_last; scalar_t__ cpu_exc_vectors; int halt_status; TYPE_1__ cpu_pmap_cpu_data; scalar_t__* coresight_base; int * cpu_xcall_p1; int * cpu_xcall_p0; int cpu_sleep_token; int * cpu_set_decrementer_func; int * cpu_get_decrementer_func; int * cpu_tbd_hardware_val; int * cpu_tbd_hardware_addr; int * cpu_get_fiq_handler; scalar_t__ failed_signal_count; scalar_t__ failed_signal; int * failed_xcall; int cpu_signal; scalar_t__ cpu_l3_size; scalar_t__ cpu_l3_id; scalar_t__ cpu_l2_size; scalar_t__ cpu_l2_id; scalar_t__ cpu_cluster_id; int cpu_cluster_type; scalar_t__ cpu_l2_access_penalty; void* cpu_idle_notify; scalar_t__ cpu_base_timebase; int * cpu_user_debug; int * rtclock_datap; int rtcPop; void* cpu_cache_dispatch; int cpu_pending_ast; scalar_t__ cpu_int_state; scalar_t__ interrupts_enabled; scalar_t__ cpu_flags; } ;
typedef TYPE_2__ cpu_data_t ;


 int ARM_CPU_ON_SLEEP_PATH ;
 int AST_NONE ;
 int CLUSTER_TYPE_SMP ;
 size_t CORESIGHT_REGIONS ;
 int CPU_NOT_HALTED ;
 int EndOfAllTime ;
 int PMAP_INVALID_CPU_NUM ;
 int RTClockData ;
 int SIGPdisabled ;
 int exc_vectors_table ;

void
cpu_data_init(cpu_data_t *cpu_data_ptr)
{
 uint32_t i;

 cpu_data_ptr->cpu_flags = 0;
 cpu_data_ptr->interrupts_enabled = 0;
 cpu_data_ptr->cpu_int_state = 0;
 cpu_data_ptr->cpu_pending_ast = AST_NONE;
 cpu_data_ptr->cpu_cache_dispatch = (void *) 0;
 cpu_data_ptr->rtcPop = EndOfAllTime;
 cpu_data_ptr->rtclock_datap = &RTClockData;
 cpu_data_ptr->cpu_user_debug = ((void*)0);


 cpu_data_ptr->cpu_base_timebase = 0;
 cpu_data_ptr->cpu_idle_notify = (void *) 0;
 cpu_data_ptr->cpu_idle_latency = 0x0ULL;
 cpu_data_ptr->cpu_idle_pop = 0x0ULL;
 cpu_data_ptr->cpu_reset_type = 0x0UL;
 cpu_data_ptr->cpu_reset_handler = 0x0UL;
 cpu_data_ptr->cpu_reset_assist = 0x0UL;
 cpu_data_ptr->cpu_regmap_paddr = 0x0ULL;
 cpu_data_ptr->cpu_phys_id = 0x0UL;
 cpu_data_ptr->cpu_l2_access_penalty = 0;
 cpu_data_ptr->cpu_cluster_type = CLUSTER_TYPE_SMP;
 cpu_data_ptr->cpu_cluster_id = 0;
 cpu_data_ptr->cpu_l2_id = 0;
 cpu_data_ptr->cpu_l2_size = 0;
 cpu_data_ptr->cpu_l3_id = 0;
 cpu_data_ptr->cpu_l3_size = 0;

 cpu_data_ptr->cpu_signal = SIGPdisabled;







 cpu_data_ptr->cpu_get_fiq_handler = ((void*)0);
 cpu_data_ptr->cpu_tbd_hardware_addr = ((void*)0);
 cpu_data_ptr->cpu_tbd_hardware_val = ((void*)0);
 cpu_data_ptr->cpu_get_decrementer_func = ((void*)0);
 cpu_data_ptr->cpu_set_decrementer_func = ((void*)0);
 cpu_data_ptr->cpu_sleep_token = ARM_CPU_ON_SLEEP_PATH;
 cpu_data_ptr->cpu_sleep_token_last = 0x00000000UL;
 cpu_data_ptr->cpu_xcall_p0 = ((void*)0);
 cpu_data_ptr->cpu_xcall_p1 = ((void*)0);

 for (i = 0; i < CORESIGHT_REGIONS; ++i) {
  cpu_data_ptr->coresight_base[i] = 0;
 }

 pmap_cpu_data_t * pmap_cpu_data_ptr = &cpu_data_ptr->cpu_pmap_cpu_data;

 pmap_cpu_data_ptr->cpu_nested_pmap = (struct pmap *) ((void*)0);
 pmap_cpu_data_ptr->cpu_number = PMAP_INVALID_CPU_NUM;

 for (i = 0; i < (sizeof(pmap_cpu_data_ptr->cpu_asid_high_bits) / sizeof(*pmap_cpu_data_ptr->cpu_asid_high_bits)); i++) {
  pmap_cpu_data_ptr->cpu_asid_high_bits[i] = 0;
 }
 cpu_data_ptr->halt_status = CPU_NOT_HALTED;




}
