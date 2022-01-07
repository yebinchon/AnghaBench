
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int Atari800_MACHINE_XLXE ;
 int Atari800_machine_type ;
 int INPUT_SelectMultiJoy (int) ;
 int MEMORY_HandlePORTB (int,int) ;




 int PIA_PACTL ;
 int PIA_PBCTL ;
 int PIA_PORTA ;
 int PIA_PORTA_mask ;
 int PIA_PORTB ;
 int PIA_PORTB_mask ;
 int SIO_SwitchCommandFrame (int) ;
 int SIO_TapeMotor (int) ;
 int XEP80_PutBit (int) ;
 int XEP80_enabled ;

void PIA_PutByte(UWORD addr, UBYTE byte)
{
 switch (addr & 0x03) {
 case 131:


  SIO_TapeMotor(byte & 0x08 ? 0 : 1);

  PIA_PACTL = byte;
  break;
 case 130:

  if ((PIA_PBCTL ^ byte) & 0x08) {

   SIO_SwitchCommandFrame(byte & 0x08 ? 0 : 1);
  }
  PIA_PBCTL = byte;
  break;
 case 129:
  if ((PIA_PACTL & 0x04) == 0) {

    PIA_PORTA_mask = ~byte;
  }
  else {






   PIA_PORTA = byte;
  }

  INPUT_SelectMultiJoy((PIA_PORTA | PIA_PORTA_mask) >> 4);

  break;
 case 128:
  if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
   if ((PIA_PBCTL & 0x04) == 0) {

    MEMORY_HandlePORTB((UBYTE) (PIA_PORTB | ~byte), (UBYTE) (PIA_PORTB | PIA_PORTB_mask));
    PIA_PORTB_mask = ~byte;
   }
   else {

    MEMORY_HandlePORTB((UBYTE) (byte | PIA_PORTB_mask), (UBYTE) (PIA_PORTB | PIA_PORTB_mask));
    PIA_PORTB = byte;
   }
  }
  else {
   if ((PIA_PBCTL & 0x04) == 0) {

    PIA_PORTB_mask = ~byte;
   }
   else {

    PIA_PORTB = byte;
   }
  }
  break;
 }
}
