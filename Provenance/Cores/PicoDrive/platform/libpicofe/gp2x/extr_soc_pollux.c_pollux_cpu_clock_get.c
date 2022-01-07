
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decode_pll (int ) ;
 int * memregl ;

__attribute__((used)) static int pollux_cpu_clock_get(void)
{
 return decode_pll(memregl[0xf004>>2]) / 1000000;
}
