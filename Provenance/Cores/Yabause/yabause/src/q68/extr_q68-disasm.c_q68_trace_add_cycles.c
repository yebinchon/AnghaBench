
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int total_cycles ;

extern void q68_trace_add_cycles(int32_t cycles)
{
    total_cycles += cycles;
}
