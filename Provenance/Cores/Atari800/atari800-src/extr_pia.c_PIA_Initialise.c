
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIA_PACTL ;
 int PIA_PBCTL ;
 int PIA_PORTA ;
 int PIA_PORTA_mask ;
 int PIA_PORTB ;
 int PIA_PORTB_mask ;
 int* PIA_PORT_input ;
 int TRUE ;

int PIA_Initialise(int *argc, char *argv[])
{
 PIA_PACTL = 0x3f;
 PIA_PBCTL = 0x3f;
 PIA_PORTA = 0xff;
 PIA_PORTB = 0xff;
 PIA_PORTA_mask = 0xff;
 PIA_PORTB_mask = 0xff;
 PIA_PORT_input[0] = 0xff;
 PIA_PORT_input[1] = 0xff;

 return TRUE;
}
