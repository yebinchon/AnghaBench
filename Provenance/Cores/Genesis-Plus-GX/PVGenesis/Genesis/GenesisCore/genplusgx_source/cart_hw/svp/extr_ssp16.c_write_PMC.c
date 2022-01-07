
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {void* h; void* l; } ;
struct TYPE_6__ {TYPE_1__ byte; } ;
struct TYPE_5__ {int emu_status; } ;


 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int elprintf (int ,char*,void*,int ) ;
 TYPE_3__ rPMC ;
 TYPE_2__* ssp ;

__attribute__((used)) static void write_PMC(u32 d)
{
  if (ssp->emu_status & SSP_PMC_HAVE_ADDR) {


    ssp->emu_status |= SSP_PMC_SET;
    ssp->emu_status &= ~SSP_PMC_HAVE_ADDR;

    rPMC.byte.h = d;



  } else {
    ssp->emu_status |= SSP_PMC_HAVE_ADDR;

    rPMC.byte.l = d;



  }
}
