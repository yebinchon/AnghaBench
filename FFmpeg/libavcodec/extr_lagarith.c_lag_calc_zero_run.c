
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;



__attribute__((used)) static uint8_t lag_calc_zero_run(int8_t x)
{
    return (x * 2) ^ (x >> 7);
}
