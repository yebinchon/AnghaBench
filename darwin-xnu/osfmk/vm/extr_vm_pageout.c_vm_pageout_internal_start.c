
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_continue_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef int host_t ;
typedef int host_info_t ;
struct TYPE_5__ {int max_cpus; } ;
typedef TYPE_1__ host_basic_info_data_t ;
struct TYPE_8__ {int id; int scratch_buf; int * current_chead; TYPE_3__* q; } ;
struct TYPE_7__ {int pgo_maxlaundry; } ;
struct TYPE_6__ {int vm_compressor_thread_count; int vm_pageout_internal_iothread; } ;


 int BASEPRI_VM ;
 scalar_t__ BSD_HOST ;
 int COMPRESSOR_SCRATCH_BUF_SIZE ;
 int HOST_BASIC_INFO ;
 int HOST_BASIC_INFO_COUNT ;
 scalar_t__ KERN_SUCCESS ;
 int MAX_COMPRESSOR_THREAD_COUNT ;
 int PE_parse_boot_argn (char*,int*,int) ;
 int VM_CONFIG_COMPRESSOR_IS_PRESENT ;
 int VM_PAGE_LAUNDRY_MAX ;
 int assert (int) ;
 TYPE_4__* ciq ;
 int host_info (int ,int ,int ,int *) ;
 int kalloc (int ) ;
 scalar_t__ kernel_thread_start_priority (int ,void*,int ,int *) ;
 int thread_deallocate (int ) ;
 scalar_t__ vm_pageout_iothread_internal ;
 TYPE_3__ vm_pageout_queue_internal ;
 TYPE_2__ vm_pageout_state ;

kern_return_t
vm_pageout_internal_start(void)
{
 kern_return_t result;
 int i;
 host_basic_info_data_t hinfo;

 assert (VM_CONFIG_COMPRESSOR_IS_PRESENT);

 mach_msg_type_number_t count = HOST_BASIC_INFO_COUNT;

 host_info((host_t)1, HOST_BASIC_INFO, (host_info_t)&hinfo, &count);

 assert(hinfo.max_cpus > 0);




 if (hinfo.max_cpus > 4)
         vm_pageout_state.vm_compressor_thread_count = 2;
 else
         vm_pageout_state.vm_compressor_thread_count = 1;

 PE_parse_boot_argn("vmcomp_threads", &vm_pageout_state.vm_compressor_thread_count,
      sizeof(vm_pageout_state.vm_compressor_thread_count));

 if (vm_pageout_state.vm_compressor_thread_count >= hinfo.max_cpus)
  vm_pageout_state.vm_compressor_thread_count = hinfo.max_cpus - 1;
 if (vm_pageout_state.vm_compressor_thread_count <= 0)
  vm_pageout_state.vm_compressor_thread_count = 1;
 else if (vm_pageout_state.vm_compressor_thread_count > MAX_COMPRESSOR_THREAD_COUNT)
  vm_pageout_state.vm_compressor_thread_count = MAX_COMPRESSOR_THREAD_COUNT;

 vm_pageout_queue_internal.pgo_maxlaundry = (vm_pageout_state.vm_compressor_thread_count * 4) * VM_PAGE_LAUNDRY_MAX;

 PE_parse_boot_argn("vmpgoi_maxlaundry", &vm_pageout_queue_internal.pgo_maxlaundry, sizeof(vm_pageout_queue_internal.pgo_maxlaundry));

 for (i = 0; i < vm_pageout_state.vm_compressor_thread_count; i++) {
  ciq[i].id = i;
  ciq[i].q = &vm_pageout_queue_internal;
  ciq[i].current_chead = ((void*)0);
  ciq[i].scratch_buf = kalloc(COMPRESSOR_SCRATCH_BUF_SIZE);

  result = kernel_thread_start_priority((thread_continue_t)vm_pageout_iothread_internal, (void *)&ciq[i],
            BASEPRI_VM, &vm_pageout_state.vm_pageout_internal_iothread);

  if (result == KERN_SUCCESS)
   thread_deallocate(vm_pageout_state.vm_pageout_internal_iothread);
  else
   break;
 }
 return result;
}
