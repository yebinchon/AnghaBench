
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_NMIST ;
 int ANTIC_Reset () ;
 scalar_t__ Atari800_MACHINE_800 ;
 scalar_t__ Atari800_machine_type ;
 int CPU_NMI () ;
 int CPU_Reset () ;
 int HandleResetEvent () ;
 int MEMORY_PutByte (int,int ) ;
 scalar_t__ MEMORY_axlon_num_banks ;
 int PBI_Reset () ;
 int PIA_Reset () ;

void Atari800_Warmstart(void)
{
 if (Atari800_machine_type == Atari800_MACHINE_800) {


  if (MEMORY_axlon_num_banks > 0) MEMORY_PutByte(0xcfff, 0);


  ANTIC_NMIST = 0x3f;
  CPU_NMI();
 }
 else {
  PBI_Reset();
  PIA_Reset();
  ANTIC_Reset();


  CPU_Reset();

 }



}
