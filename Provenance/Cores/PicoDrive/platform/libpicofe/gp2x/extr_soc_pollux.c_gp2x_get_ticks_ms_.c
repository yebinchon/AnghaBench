
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gp2x_get_ticks_us_ () ;

__attribute__((used)) static unsigned int gp2x_get_ticks_ms_(void)
{

 unsigned long long v64;
 v64 = (unsigned long long)gp2x_get_ticks_us_() * 4294968;
 return v64 >> 32;
}
