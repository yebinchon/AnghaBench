
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANTIC_LINE_C ;
 scalar_t__ CASSETTE_AddScanLine () ;
 int CPU_GenerateIRQ () ;
 int ESC_enable_sio_patch ;
 int INPUT_Scanline () ;
 int POKEYSND_UpdateVolOnly () ;
 size_t POKEY_CHAN1 ;
 size_t POKEY_CHAN2 ;
 size_t POKEY_CHAN4 ;
 int POKEY_DELAYED_SERIN_IRQ ;
 scalar_t__ POKEY_DELAYED_SEROUT_IRQ ;
 scalar_t__ POKEY_DELAYED_XMTDONE_IRQ ;
 int * POKEY_DivNIRQ ;
 scalar_t__* POKEY_DivNMax ;
 int POKEY_IRQEN ;
 int POKEY_IRQST ;
 int POKEY_SERIN ;
 int POKEY_SKCTL ;
 int POKEY_SKSTAT ;
 int SIO_GetByte () ;
 int pokey_update () ;
 int pot_scanline ;
 int printf (char*,...) ;
 int random_scanline_counter ;

void POKEY_Scanline(void)
{
 INPUT_Scanline();





 if (!ESC_enable_sio_patch) {
  if (CASSETTE_AddScanLine())
   POKEY_DELAYED_SERIN_IRQ = 1;
 }

 if ((POKEY_SKCTL & 0x03) == 0)

  return;

 if (pot_scanline < 228)
  pot_scanline++;

 random_scanline_counter += ANTIC_LINE_C;

 if (POKEY_DELAYED_SERIN_IRQ > 0) {
  if (--POKEY_DELAYED_SERIN_IRQ == 0) {

   POKEY_SERIN = SIO_GetByte();
   if (POKEY_IRQEN & 0x20) {
    if (POKEY_IRQST & 0x20) {
     POKEY_IRQST &= 0xdf;



    }
    else {
     POKEY_SKSTAT &= 0xdf;



    }
    CPU_GenerateIRQ();
   }





  }
 }

 if (POKEY_DELAYED_SEROUT_IRQ > 0) {
  if (--POKEY_DELAYED_SEROUT_IRQ == 0) {
   if (POKEY_IRQEN & 0x10) {



    POKEY_IRQST &= 0xef;
    CPU_GenerateIRQ();
   }





  }
 }

 if (POKEY_DELAYED_XMTDONE_IRQ > 0)
  if (--POKEY_DELAYED_XMTDONE_IRQ == 0) {
   POKEY_IRQST &= 0xf7;
   if (POKEY_IRQEN & 0x08) {



    CPU_GenerateIRQ();
   }




  }

 if ((POKEY_DivNIRQ[POKEY_CHAN1] -= ANTIC_LINE_C) < 0 ) {
  POKEY_DivNIRQ[POKEY_CHAN1] += POKEY_DivNMax[POKEY_CHAN1];
  if (POKEY_IRQEN & 0x01) {
   POKEY_IRQST &= 0xfe;
   CPU_GenerateIRQ();
  }
 }

 if ((POKEY_DivNIRQ[POKEY_CHAN2] -= ANTIC_LINE_C) < 0 ) {
  POKEY_DivNIRQ[POKEY_CHAN2] += POKEY_DivNMax[POKEY_CHAN2];
  if (POKEY_IRQEN & 0x02) {
   POKEY_IRQST &= 0xfd;
   CPU_GenerateIRQ();
  }
 }

 if ((POKEY_DivNIRQ[POKEY_CHAN4] -= ANTIC_LINE_C) < 0 ) {
  POKEY_DivNIRQ[POKEY_CHAN4] += POKEY_DivNMax[POKEY_CHAN4];
  if (POKEY_IRQEN & 0x04) {
   POKEY_IRQST &= 0xfb;
   CPU_GenerateIRQ();
  }
 }
}
