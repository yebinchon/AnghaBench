
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {void* l; void* h; } ;
struct TYPE_3__ {int emu_status; } ;


 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int elprintf (int ,char*,void*,int ) ;
 TYPE_2__ rPMC ;
 TYPE_1__* ssp ;

__attribute__((used)) static void write_PMC(u32 d)
{
 if (ssp->emu_status & SSP_PMC_HAVE_ADDR) {


  ssp->emu_status |= SSP_PMC_SET;
  ssp->emu_status &= ~SSP_PMC_HAVE_ADDR;
  rPMC.h = d;
  elprintf(EL_SVP, "PMC w m %04x @ %04x", rPMC.h, GET_PPC_OFFS());
 } else {
  ssp->emu_status |= SSP_PMC_HAVE_ADDR;
  rPMC.l = d;
  elprintf(EL_SVP, "PMC w a %04x @ %04x", rPMC.l, GET_PPC_OFFS());
 }
}
