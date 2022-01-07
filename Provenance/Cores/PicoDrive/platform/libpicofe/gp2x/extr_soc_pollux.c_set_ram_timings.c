
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memregs ;
 int pollux_set_fromenv (int ,char*) ;

__attribute__((used)) static void set_ram_timings(void)
{
 pollux_set_fromenv(memregs, "POLLUX_RAM_TIMINGS");
}
