
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ rom; } ;
struct TYPE_7__ {int v; } ;
struct TYPE_6__ {int emu_status; int* pmac_read; } ;
struct TYPE_5__ {scalar_t__ dram; } ;


 TYPE_4__ Pico ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int get_inc (int) ;
 TYPE_3__ rPMC ;
 TYPE_2__* ssp ;
 TYPE_1__* svp ;

u32 ssp_pm_read(int reg)
{
 u32 d = 0, mode;

 if (ssp->emu_status & SSP_PMC_SET)
 {
  ssp->pmac_read[reg] = rPMC.v;
  ssp->emu_status &= ~SSP_PMC_SET;
  return 0;
 }


 ssp->emu_status &= ~SSP_PMC_HAVE_ADDR;

 mode = ssp->pmac_read[reg]>>16;
 if ((mode & 0xfff0) == 0x0800)
 {
  d = ((unsigned short *)Pico.rom)[ssp->pmac_read[reg]&0xfffff];
  ssp->pmac_read[reg] += 1;
 }
 else if ((mode & 0x47ff) == 0x0018)
 {
  unsigned short *dram = (unsigned short *)svp->dram;
  int inc = get_inc(mode);
  d = dram[ssp->pmac_read[reg]&0xffff];
  ssp->pmac_read[reg] += inc;
 }


 rPMC.v = ssp->pmac_read[reg];

 return d;
}
