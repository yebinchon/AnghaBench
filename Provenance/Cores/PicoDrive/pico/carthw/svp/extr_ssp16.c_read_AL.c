
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int v; } ;
struct TYPE_3__ {int emu_status; } ;


 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int* PC ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int elprintf (int ,char*,int ,int ) ;
 int rAL ;
 TYPE_2__ rPMC ;
 TYPE_1__* ssp ;

__attribute__((used)) static u32 read_AL(void)
{
 if (*(PC-1) == 0x000f)
  elprintf(EL_SVP, "ssp dummy PM assign %08x @ %04x", rPMC.v, GET_PPC_OFFS());
 ssp->emu_status &= ~(SSP_PMC_SET|SSP_PMC_HAVE_ADDR);
 return rAL;
}
