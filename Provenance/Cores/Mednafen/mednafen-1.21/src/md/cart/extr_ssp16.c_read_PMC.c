
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int l; } ;
struct TYPE_3__ {int emu_status; } ;


 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int elprintf (int ,char*,int,char,int ) ;
 TYPE_2__ rPMC ;
 TYPE_1__* ssp ;

__attribute__((used)) static u32 read_PMC(void)
{
 elprintf(EL_SVP, "PMC r a %04x (st %c) @ %04x", rPMC.l,
  (ssp->emu_status & SSP_PMC_HAVE_ADDR) ? 'm' : 'a', GET_PPC_OFFS());
 if (ssp->emu_status & SSP_PMC_HAVE_ADDR) {


  ssp->emu_status |= SSP_PMC_SET;
  ssp->emu_status &= ~SSP_PMC_HAVE_ADDR;
  return ((rPMC.l << 4) & 0xfff0) | ((rPMC.l >> 4) & 0xf);
 } else {
  ssp->emu_status |= SSP_PMC_HAVE_ADDR;
  return rPMC.l;
 }
}
