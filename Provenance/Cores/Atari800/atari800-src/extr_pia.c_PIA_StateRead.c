
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_machine_type ;
 scalar_t__ MEMORY_RAM_320_COMPY_SHOP ;
 scalar_t__ MEMORY_RAM_320_RAMBO ;
 int MEMORY_cartA0BF_enabled ;
 scalar_t__ MEMORY_ram_size ;
 int MEMORY_selftest_enabled ;
 int MEMORY_xe_bank ;
 int PIA_PACTL ;
 int PIA_PBCTL ;
 int PIA_PORTA ;
 int PIA_PORTA_mask ;
 int PIA_PORTB ;
 int PIA_PORTB_mask ;
 int SIO_SwitchCommandFrame (int) ;
 int SIO_TapeMotor (int) ;
 int StateSav_ReadINT (int*,int) ;
 int StateSav_ReadUBYTE (int*,int) ;

void PIA_StateRead(UBYTE version)
{
 UBYTE byte;

 StateSav_ReadUBYTE( &PIA_PACTL, 1 );
 SIO_TapeMotor(PIA_PACTL & 0x08 ? 0 : 1);
 StateSav_ReadUBYTE( &byte, 1 );
 if ((PIA_PBCTL ^ byte) & 0x08) {

  SIO_SwitchCommandFrame(byte & 0x08 ? 0 : 1);
 }
 PIA_PBCTL = byte;
 StateSav_ReadUBYTE( &PIA_PORTA, 1 );
 StateSav_ReadUBYTE( &PIA_PORTB, 1 );


 if (version <= 6) {
  int Ram256;
  StateSav_ReadINT( &MEMORY_xe_bank, 1 );
  StateSav_ReadINT( &MEMORY_selftest_enabled, 1 );
  StateSav_ReadINT( &Ram256, 1 );

  if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
   if (Ram256 == 1 && MEMORY_ram_size == MEMORY_RAM_320_COMPY_SHOP)
    MEMORY_ram_size = MEMORY_RAM_320_RAMBO;
  }
  StateSav_ReadINT( &MEMORY_cartA0BF_enabled, 1 );
 }

 StateSav_ReadUBYTE( &PIA_PORTA_mask, 1 );
 StateSav_ReadUBYTE( &PIA_PORTB_mask, 1 );
}
