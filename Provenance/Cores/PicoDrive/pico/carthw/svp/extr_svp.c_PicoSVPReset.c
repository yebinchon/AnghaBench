
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rom; } ;
struct TYPE_3__ {int ssp1601; scalar_t__ iram_rom; } ;


 int EL_SVP ;
 int POPT_EN_DRC ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int elprintf (int ,char*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int ssp1601_dyn_reset (int *) ;
 int ssp1601_reset (int *) ;
 TYPE_1__* svp ;
 scalar_t__ svp_dyn_ready ;

__attribute__((used)) static void PicoSVPReset(void)
{
 elprintf(EL_SVP, "SVP reset");

 memcpy(svp->iram_rom + 0x800, Pico.rom + 0x800, 0x20000 - 0x800);
 ssp1601_reset(&svp->ssp1601);




}
