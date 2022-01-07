
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_machine_type ;
 int MEMORY_HandlePORTB (int,int ) ;
 int PIA_PORTA ;
 int PIA_PORTB ;
 int PIA_PORTB_mask ;

void PIA_Reset(void)
{
 PIA_PORTA = 0xff;
 if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
  MEMORY_HandlePORTB(0xff, (UBYTE) (PIA_PORTB | PIA_PORTB_mask));
 }
 PIA_PORTB = 0xff;
}
