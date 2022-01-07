
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dotsel; } ;


 int CLKTYPE_28MHZ ;
 int MSH2 ;
 int SH2NMI (int ) ;
 int ScspReset () ;
 int ScuReset () ;
 TYPE_1__* SmpcInternalVars ;
 int Vdp1Reset () ;
 int Vdp2Reset () ;
 int YabauseChangeTiming (int ) ;
 int YabauseStopSlave () ;

void SmpcCKCHG352(void) {

   Vdp1Reset();
   Vdp2Reset();
   ScuReset();
   ScspReset();



   YabauseStopSlave();


   YabauseChangeTiming(CLKTYPE_28MHZ);


   SmpcInternalVars->dotsel = 1;


   SH2NMI(MSH2);
}
