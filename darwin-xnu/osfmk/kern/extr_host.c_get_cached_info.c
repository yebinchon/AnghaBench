
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_msg_type_number_t ;
typedef int integer_t ;
typedef int host_info64_t ;
struct TYPE_2__ {int count; scalar_t__ data; } ;


 int NUM_HOST_INFO_DATA_TYPES ;
 TYPE_1__* g_host_stats_cache ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static void
get_cached_info(int index, host_info64_t info, mach_msg_type_number_t* count)
{
    if (index < 0 || index >= NUM_HOST_INFO_DATA_TYPES) {
        *count = 0;
        return;
    }

    *count = g_host_stats_cache[index].count;
    memcpy(info, (void *)g_host_stats_cache[index].data, g_host_stats_cache[index].count * sizeof(integer_t));
}
