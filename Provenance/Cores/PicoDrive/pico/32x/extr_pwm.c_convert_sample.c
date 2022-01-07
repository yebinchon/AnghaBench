
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int pwm_cycles ;
 int pwm_mult ;

__attribute__((used)) static int convert_sample(unsigned int v)
{
  if (v == 0)
    return 0;
  if (v > pwm_cycles)
    v = pwm_cycles;
  return ((int)v - pwm_cycles / 2) * pwm_mult;
}
