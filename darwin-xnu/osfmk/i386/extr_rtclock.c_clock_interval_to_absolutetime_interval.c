
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



void
clock_interval_to_absolutetime_interval(
 uint32_t interval,
 uint32_t scale_factor,
 uint64_t *result)
{
 *result = (uint64_t)interval * scale_factor;
}
