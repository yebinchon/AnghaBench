
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_dt_ranges (char*,int) ;

unsigned bcm_host_get_sdram_address(void)
{
   unsigned address = get_dt_ranges("/proc/device-tree/axi/vc_mem/reg", 8);
   return address == ~0 ? 0x40000000 : address;
}
