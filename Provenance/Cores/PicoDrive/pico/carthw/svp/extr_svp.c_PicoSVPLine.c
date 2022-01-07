
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scanline; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int POPT_EN_DRC ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int PicoSVPCycles ;
 int ssp1601_dyn_run (int) ;
 int ssp1601_run (int) ;
 scalar_t__ svp_dyn_ready ;

__attribute__((used)) static void PicoSVPLine(void)
{
 int count = 1;
 {
  ssp1601_run(PicoSVPCycles * count);
  svp_dyn_ready = 0;
 }



}
