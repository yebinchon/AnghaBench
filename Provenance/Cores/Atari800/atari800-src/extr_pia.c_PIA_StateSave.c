
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
 int StateSav_SaveUBYTE (int *,int) ;

void PIA_StateSave(void)
{
 StateSav_SaveUBYTE( &PIA_PACTL, 1 );
 StateSav_SaveUBYTE( &PIA_PBCTL, 1 );
 StateSav_SaveUBYTE( &PIA_PORTA, 1 );
 StateSav_SaveUBYTE( &PIA_PORTB, 1 );

 StateSav_SaveUBYTE( &PIA_PORTA_mask, 1 );
 StateSav_SaveUBYTE( &PIA_PORTB_mask, 1 );
}
