
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int commpage_set_timestamp (int ,int ,int ,int ,int ) ;

void
clock_gettimeofday_set_commpage(uint64_t abstime,
                                uint64_t sec,
                                uint64_t frac,
                                uint64_t scale,
                                uint64_t tick_per_sec)
{
 commpage_set_timestamp(abstime, sec, frac, scale, tick_per_sec);
}
