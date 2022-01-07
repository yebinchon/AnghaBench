
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * POKEY_AUDC ;
 int * POKEY_AUDCTL ;
 int * POKEY_AUDF ;
 int* POKEY_Base_mult ;
 int POKEY_DELAYED_SERIN_IRQ ;
 int POKEY_DELAYED_SEROUT_IRQ ;
 int POKEY_DELAYED_XMTDONE_IRQ ;
 int* POKEY_DivNIRQ ;
 int* POKEY_DivNMax ;
 int POKEY_IRQEN ;
 int POKEY_IRQST ;
 int POKEY_KBCODE ;
 int POKEY_SKCTL ;
 int StateSav_SaveINT (int*,int) ;
 int StateSav_SaveUBYTE (int *,int) ;

void POKEY_StateSave(void)
{
 int shift_key = 0;
 int keypressed = 0;

 StateSav_SaveUBYTE(&POKEY_KBCODE, 1);
 StateSav_SaveUBYTE(&POKEY_IRQST, 1);
 StateSav_SaveUBYTE(&POKEY_IRQEN, 1);
 StateSav_SaveUBYTE(&POKEY_SKCTL, 1);

 StateSav_SaveINT(&shift_key, 1);
 StateSav_SaveINT(&keypressed, 1);
 StateSav_SaveINT(&POKEY_DELAYED_SERIN_IRQ, 1);
 StateSav_SaveINT(&POKEY_DELAYED_SEROUT_IRQ, 1);
 StateSav_SaveINT(&POKEY_DELAYED_XMTDONE_IRQ, 1);

 StateSav_SaveUBYTE(&POKEY_AUDF[0], 4);
 StateSav_SaveUBYTE(&POKEY_AUDC[0], 4);
 StateSav_SaveUBYTE(&POKEY_AUDCTL[0], 1);

 StateSav_SaveINT(&POKEY_DivNIRQ[0], 4);
 StateSav_SaveINT(&POKEY_DivNMax[0], 4);
 StateSav_SaveINT(&POKEY_Base_mult[0], 1);
}
