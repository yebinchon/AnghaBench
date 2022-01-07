
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_4__ {int TimeStamp_tick; void* Ticks_per_sec; void* Ticks_scale; void* TimeStamp_frac; void* TimeStamp_sec; } ;
typedef TYPE_1__ new_commpage_timeofday_data_t ;


 TYPE_1__* gtod_time_data32 ;
 TYPE_1__* gtod_time_data64 ;

void
commpage_set_timestamp(
  uint64_t abstime,
  uint64_t sec,
  uint64_t frac,
  uint64_t scale,
  uint64_t tick_per_sec)
{
 new_commpage_timeofday_data_t *p32 = gtod_time_data32;
 new_commpage_timeofday_data_t *p64 = gtod_time_data64;

 p32->TimeStamp_tick = 0x0ULL;
 p64->TimeStamp_tick = 0x0ULL;

 p32->TimeStamp_sec = sec;
 p64->TimeStamp_sec = sec;

 p32->TimeStamp_frac = frac;
 p64->TimeStamp_frac = frac;

 p32->Ticks_scale = scale;
 p64->Ticks_scale = scale;

 p32->Ticks_per_sec = tick_per_sec;
 p64->Ticks_per_sec = tick_per_sec;

 p32->TimeStamp_tick = abstime;
 p64->TimeStamp_tick = abstime;
}
