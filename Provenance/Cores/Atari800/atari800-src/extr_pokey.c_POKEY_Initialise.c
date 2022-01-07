
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef void* UBYTE ;


 int GetTickCount () ;
 int INPUT_PlaybackInt () ;
 scalar_t__ INPUT_Playingback () ;
 int INPUT_RecordInt (int) ;
 scalar_t__ INPUT_Recording () ;
 scalar_t__* POKEY_AUDC ;
 scalar_t__* POKEY_AUDCTL ;
 scalar_t__* POKEY_AUDF ;
 int * POKEY_Base_mult ;
 scalar_t__ POKEY_DELAYED_SERIN_IRQ ;
 scalar_t__ POKEY_DELAYED_SEROUT_IRQ ;
 scalar_t__ POKEY_DELAYED_XMTDONE_IRQ ;
 int POKEY_DIV_64 ;
 scalar_t__* POKEY_DivNIRQ ;
 scalar_t__* POKEY_DivNMax ;
 int POKEY_IRQEN ;
 int POKEY_IRQST ;
 int POKEY_KBCODE ;
 int POKEY_MAXPOKEYS ;
 int POKEY_POLY17_SIZE ;
 int POKEY_SERIN ;
 int POKEY_SKCTL ;
 int POKEY_SKSTAT ;
 void** POKEY_poly17_lookup ;
 void** POKEY_poly9_lookup ;
 int TRUE ;
 scalar_t__ pot_scanline ;
 int random_scanline_counter ;
 int time (int *) ;

int POKEY_Initialise(int *argc, char *argv[])
{
 int i;
 ULONG reg;


 POKEY_DELAYED_SERIN_IRQ = 0;
 POKEY_DELAYED_SEROUT_IRQ = 0;
 POKEY_DELAYED_XMTDONE_IRQ = 0;

 POKEY_KBCODE = 0xff;
 POKEY_SERIN = 0x00;
 POKEY_IRQST = 0xff;
 POKEY_IRQEN = 0x00;
 POKEY_SKSTAT = 0xef;
 POKEY_SKCTL = 0x00;

 for (i = 0; i < (POKEY_MAXPOKEYS * 4); i++) {
  POKEY_AUDC[i] = 0;
  POKEY_AUDF[i] = 0;
 }

 for (i = 0; i < POKEY_MAXPOKEYS; i++) {
  POKEY_AUDCTL[i] = 0;
  POKEY_Base_mult[i] = POKEY_DIV_64;
 }

 for (i = 0; i < 4; i++)
  POKEY_DivNIRQ[i] = POKEY_DivNMax[i] = 0;

 pot_scanline = 0;


 reg = 0x1ff;
 for (i = 0; i < 511; i++) {
  reg = ((((reg >> 5) ^ reg) & 1) << 8) + (reg >> 1);
  POKEY_poly9_lookup[i] = (UBYTE) reg;
 }

 reg = 0x1ffff;
 for (i = 0; i < 16385; i++) {
  reg = ((((reg >> 5) ^ reg) & 0xff) << 9) + (reg >> 8);
  POKEY_poly17_lookup[i] = (UBYTE) (reg >> 1);
 }


 if (INPUT_Playingback()) {
  random_scanline_counter = INPUT_PlaybackInt();
 }
 else

 {
  random_scanline_counter =





  0;

 }

 if (INPUT_Recording()) {
  INPUT_RecordInt(random_scanline_counter);
 }


 return TRUE;
}
