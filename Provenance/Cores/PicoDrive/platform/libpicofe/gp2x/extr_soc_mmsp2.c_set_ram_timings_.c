
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_ram_timing_vals (int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void set_ram_timings_(void)
{

 set_ram_timing_vals(2, 6, 4, 1, 1, 1, 2, 2);
}
