
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_3__ {int time_den; int time_num; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;


 int INT64_C (int) ;
 int vc_container_assert (int) ;

__attribute__((used)) static int64_t avi_stream_ticks_to_us(VC_CONTAINER_TRACK_MODULE_T *track_module, uint64_t ticks)
{
   int64_t time;
   vc_container_assert(track_module->time_den != 0);
   time = INT64_C(1000000) * track_module->time_num * ticks / track_module->time_den;
   return time;
}
