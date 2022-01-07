
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int cycle_accum ;

void sh2_trace_add_cycles(s32 cycles)
{
    cycle_accum += cycles;
}
