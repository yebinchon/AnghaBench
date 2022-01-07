
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dotsel; } ;


 int CLKTYPE_26MHZ ;
 int MSH2 ;
 int SH2NMI (int ) ;
 int ScspReset () ;
 int ScuReset () ;
 TYPE_1__* SmpcInternalVars ;
 int Vdp1Reset () ;
 int Vdp2Reset () ;
 int YabauseChangeTiming (int ) ;
 int YabauseStopSlave () ;

void SmpcCKCHG320(void) {

   Vdp1Reset();
   Vdp2Reset();
   ScuReset();
   ScspReset();



   YabauseStopSlave();


   YabauseChangeTiming(CLKTYPE_26MHZ);


   SmpcInternalVars->dotsel = 0;


   SH2NMI(MSH2);
}
