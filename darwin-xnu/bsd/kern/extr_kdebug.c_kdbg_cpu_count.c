
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int mach_msg_type_number_t ;
typedef int host_t ;
typedef int host_info_t ;
struct TYPE_2__ {scalar_t__ logical_cpu_max; } ;
typedef TYPE_1__ host_basic_info_data_t ;
typedef scalar_t__ boolean_t ;


 int HOST_BASIC_INFO ;
 int HOST_BASIC_INFO_COUNT ;
 int assert (int) ;
 int host_info (int ,int ,int ,int *) ;
 scalar_t__ max_ncpus ;
 scalar_t__ ml_get_cpu_count () ;

__attribute__((used)) static uint32_t
kdbg_cpu_count(boolean_t early_trace)
{
 if (early_trace) {



  return max_ncpus;

 }

 host_basic_info_data_t hinfo;
 mach_msg_type_number_t count = HOST_BASIC_INFO_COUNT;
 host_info((host_t)1 , HOST_BASIC_INFO, (host_info_t)&hinfo, &count);
 assert(hinfo.logical_cpu_max > 0);
 return hinfo.logical_cpu_max;
}
