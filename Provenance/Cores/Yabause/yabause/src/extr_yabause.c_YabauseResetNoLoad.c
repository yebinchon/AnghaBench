
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cs2Reset () ;
 int HighWram ;
 int LowWram ;
 int MSH2 ;
 int SH2PowerOn (int ) ;
 int SH2Reset (int ) ;
 int ScspReset () ;
 int ScuReset () ;
 int SmpcReset () ;
 int Vdp1Reset () ;
 int Vdp2Reset () ;
 int YabauseStopSlave () ;
 int memset (int ,int ,int) ;

void YabauseResetNoLoad(void) {
   SH2Reset(MSH2);
   YabauseStopSlave();
   memset(HighWram, 0, 0x100000);
   memset(LowWram, 0, 0x100000);



   Cs2Reset();
   ScuReset();
   ScspReset();
   Vdp1Reset();
   Vdp2Reset();
   SmpcReset();

   SH2PowerOn(MSH2);
}
