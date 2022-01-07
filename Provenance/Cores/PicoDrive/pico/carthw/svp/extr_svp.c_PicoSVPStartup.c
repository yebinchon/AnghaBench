
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int romsize; scalar_t__ rom; } ;
struct TYPE_7__ {int ssp1601; int * dram; int * iram_rom; } ;
struct TYPE_6__ {int * ptr; } ;


 int EL_STATUS ;
 int EL_SVP ;
 int PAHW_SVP ;
 int POPT_EN_DRC ;
 TYPE_5__ Pico ;
 int PicoAHW ;
 int PicoCartMemSetup ;
 int PicoCartResize (int) ;
 int PicoCartUnloadHook ;
 int PicoDmaHook ;
 int PicoLineHook ;
 int PicoOpt ;
 int PicoResetHook ;
 int PicoSVPDma ;
 int PicoSVPExit ;
 int PicoSVPLine ;
 int PicoSVPMemSetup ;
 int PicoSVPReset ;
 TYPE_1__* carthw_chunks ;
 int elprintf (int,char*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ ssp1601_dyn_startup () ;
 TYPE_2__* svp ;
 int svp_dyn_ready ;
 TYPE_1__* svp_states ;

void PicoSVPStartup(void)
{
 int ret;

 elprintf(EL_STATUS, "SVP startup");

 ret = PicoCartResize(Pico.romsize + sizeof(*svp));
 if (ret != 0) {
  elprintf(EL_STATUS|EL_SVP, "OOM for SVP data");
  return;
 }

 svp = (void *) ((char *)Pico.rom + Pico.romsize);
 memset(svp, 0, sizeof(*svp));


 svp_dyn_ready = 0;
 PicoCartMemSetup = PicoSVPMemSetup;
 PicoDmaHook = PicoSVPDma;
 PicoResetHook = PicoSVPReset;
 PicoLineHook = PicoSVPLine;
 PicoCartUnloadHook = PicoSVPExit;


 svp_states[0].ptr = svp->iram_rom;
 svp_states[1].ptr = svp->dram;
 svp_states[2].ptr = &svp->ssp1601;
 carthw_chunks = svp_states;
 PicoAHW |= PAHW_SVP;
}
