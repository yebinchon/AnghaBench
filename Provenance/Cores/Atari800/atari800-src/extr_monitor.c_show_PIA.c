
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIA_PACTL ;
 int PIA_PBCTL ;
 int PIA_PORTA ;
 int PIA_PORTB ;
 int printf (char*,int,int,int,int) ;

__attribute__((used)) static void show_PIA(void)
{
 printf("PACTL= %02X    PBCTL= %02X    PORTA= %02X    "
     "PORTB= %02X\n", PIA_PACTL, PIA_PBCTL, PIA_PORTA, PIA_PORTB);
}
