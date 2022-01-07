
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_msg_type_number_t ;
typedef int host_t ;
typedef int host_info_t ;
struct TYPE_3__ {int max_cpus; } ;
typedef TYPE_1__ host_basic_info_data_t ;
struct TYPE_4__ {int vm_restricted_to_single_processor; } ;


 scalar_t__ BSD_HOST ;
 int FALSE ;
 int HOST_BASIC_INFO ;
 int HOST_BASIC_INFO_COUNT ;
 int TRUE ;
 int assert (int) ;
 int host_info (int ,int ,int ,int *) ;
 TYPE_2__ vm_pageout_state ;

void
vm_set_restrictions()
{
 host_basic_info_data_t hinfo;
 mach_msg_type_number_t count = HOST_BASIC_INFO_COUNT;


 host_info((host_t)1, HOST_BASIC_INFO, (host_info_t)&hinfo, &count);

 assert(hinfo.max_cpus > 0);

 if (hinfo.max_cpus <= 3) {
  vm_pageout_state.vm_restricted_to_single_processor = TRUE;
 } else
  vm_pageout_state.vm_restricted_to_single_processor = FALSE;
}
