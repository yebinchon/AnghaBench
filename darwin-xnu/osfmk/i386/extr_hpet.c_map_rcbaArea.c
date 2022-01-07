
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int VM_WIMG_IO ;
 int cfgAdr ;
 int cfgDat ;
 int inl (int) ;
 scalar_t__ io_map_spec (int,int,int ) ;
 int kprintf (char*,unsigned long,int) ;
 int lpcCfg ;
 int outl (int ,int) ;
 scalar_t__ rcbaArea ;
 int rcbaAreap ;

__attribute__((used)) static void
map_rcbaArea(void)
{



 outl(cfgAdr, lpcCfg | (0xF0 & 0xFC));
 rcbaAreap = inl(cfgDat | (0xF0 & 0x03));
 rcbaArea = io_map_spec(rcbaAreap & -4096, PAGE_SIZE * 4, VM_WIMG_IO);
 kprintf("RCBA: vaddr = %lX, paddr = %08X\n", (unsigned long)rcbaArea, rcbaAreap);
}
