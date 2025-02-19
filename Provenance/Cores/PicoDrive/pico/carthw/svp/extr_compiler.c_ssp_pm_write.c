
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned short u32 ;
struct TYPE_8__ {int v; } ;
struct TYPE_5__ {int iram_dirty; } ;
struct TYPE_7__ {int emu_status; int* pmac_write; TYPE_1__ drc; } ;
struct TYPE_6__ {scalar_t__ iram_rom; scalar_t__ dram; } ;


 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int get_inc (int) ;
 int overwrite_write (unsigned short,unsigned short) ;
 TYPE_4__ rPMC ;
 TYPE_3__* ssp ;
 TYPE_2__* svp ;

void ssp_pm_write(u32 d, int reg)
{
 unsigned short *dram;
 int mode, addr;

 if (ssp->emu_status & SSP_PMC_SET)
 {
  ssp->pmac_write[reg] = rPMC.v;
  ssp->emu_status &= ~SSP_PMC_SET;
  return;
 }


 ssp->emu_status &= ~SSP_PMC_HAVE_ADDR;

 dram = (unsigned short *)svp->dram;
 mode = ssp->pmac_write[reg]>>16;
 addr = ssp->pmac_write[reg]&0xffff;
 if ((mode & 0x43ff) == 0x0018)
 {
  int inc = get_inc(mode);
  if (mode & 0x0400) {
         overwrite_write(dram[addr], d);
  } else dram[addr] = d;
  ssp->pmac_write[reg] += inc;
 }
 else if ((mode & 0xfbff) == 0x4018)
 {
  if (mode & 0x0400) {
         overwrite_write(dram[addr], d);
  } else dram[addr] = d;
  ssp->pmac_write[reg] += (addr&1) ? 0x1f : 1;
 }
 else if ((mode & 0x47ff) == 0x001c)
 {
  int inc = get_inc(mode);
  ((unsigned short *)svp->iram_rom)[addr&0x3ff] = d;
  ssp->pmac_write[reg] += inc;
  ssp->drc.iram_dirty = 1;
 }

 rPMC.v = ssp->pmac_write[reg];
}
