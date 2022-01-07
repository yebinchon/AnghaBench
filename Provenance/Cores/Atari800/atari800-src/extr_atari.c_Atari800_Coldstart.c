
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF80_InsertRightCartridge () ;
 int AF80_Reset () ;
 scalar_t__ AF80_enabled ;
 int ANTIC_Reset () ;
 int CARTRIDGE_ColdStart () ;
 int CPU_Reset () ;
 int GTIA_consol_override ;
 int HandleResetEvent () ;
 int MEMORY_dPutByte (int,int) ;
 int PBI_Reset () ;
 int PIA_Reset () ;

void Atari800_Coldstart(void)
{
 PBI_Reset();
 PIA_Reset();
 ANTIC_Reset();


 CPU_Reset();





 CARTRIDGE_ColdStart();

 MEMORY_dPutByte(0x244, 1);


 GTIA_consol_override = 2;






}
