
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int CASSETTE_ResetPOKEY () ;
 int CPU_GenerateIRQ () ;
 int CPU_IRQ ;
 int PBI_IRQ ;
 int PC ;
 int POKEYSND_Update (int const,int,int,int ) ;
 int POKEYSND_UpdateSerio (int,int) ;
 scalar_t__ POKEYSND_stereo_enabled ;
 int* POKEY_AUDC ;
 int* POKEY_AUDCTL ;
 int* POKEY_AUDF ;
 int * POKEY_Base_mult ;
 int POKEY_CH1_CH2 ;
 int POKEY_CH3_CH4 ;
 size_t POKEY_CHAN1 ;
 size_t POKEY_CHAN2 ;
 size_t POKEY_CHAN3 ;
 size_t POKEY_CHAN4 ;
 size_t POKEY_CHIP2 ;
 int POKEY_CLOCK_15 ;
 int POKEY_DELAYED_SERIN_IRQ ;
 int POKEY_DELAYED_SEROUT_IRQ ;
 int POKEY_DELAYED_XMTDONE_IRQ ;
 int POKEY_DIV_15 ;
 int POKEY_DIV_64 ;
 int * POKEY_DivNIRQ ;
 int * POKEY_DivNMax ;
 int POKEY_IRQEN ;
 int POKEY_IRQST ;
 int const POKEY_OFFSET_POKEY2 ;





 int POKEY_SKCTL ;
 int POKEY_SKSTAT ;
 int POKEY_siocheck () ;
 int SIO_PutByte (int) ;
 int SIO_SEROUT_INTERVAL ;
 int SIO_XMTDONE_INTERVAL ;
 int SOUND_GAIN ;
 int Update_Counter (int) ;
 int VOICEBOX_SEROUTPutByte (int) ;
 int VOICEBOX_SKCTLPutByte (int) ;
 int pot_scanline ;
 int printf (char*,int,...) ;

void POKEY_PutByte(UWORD addr, UBYTE byte)
{



 addr &= 0x0f;

 switch (addr) {
 case 142:
  POKEY_AUDC[POKEY_CHAN1] = byte;
  POKEYSND_Update(142, byte, 0, SOUND_GAIN);
  break;
 case 141:
  POKEY_AUDC[POKEY_CHAN2] = byte;
  POKEYSND_Update(141, byte, 0, SOUND_GAIN);
  break;
 case 140:
  POKEY_AUDC[POKEY_CHAN3] = byte;
  POKEYSND_Update(140, byte, 0, SOUND_GAIN);
  break;
 case 139:
  POKEY_AUDC[POKEY_CHAN4] = byte;
  POKEYSND_Update(139, byte, 0, SOUND_GAIN);
  break;
 case 138:
  POKEY_AUDCTL[0] = byte;


  if (byte & POKEY_CLOCK_15)
   POKEY_Base_mult[0] = POKEY_DIV_15;
  else
   POKEY_Base_mult[0] = POKEY_DIV_64;

  Update_Counter((1 << POKEY_CHAN1) | (1 << POKEY_CHAN2) | (1 << POKEY_CHAN3) | (1 << POKEY_CHAN4));
  POKEYSND_Update(138, byte, 0, SOUND_GAIN);
  break;
 case 137:
  POKEY_AUDF[POKEY_CHAN1] = byte;
  Update_Counter((POKEY_AUDCTL[0] & POKEY_CH1_CH2) ? ((1 << POKEY_CHAN2) | (1 << POKEY_CHAN1)) : (1 << POKEY_CHAN1));
  POKEYSND_Update(137, byte, 0, SOUND_GAIN);
  break;
 case 136:
  POKEY_AUDF[POKEY_CHAN2] = byte;
  Update_Counter(1 << POKEY_CHAN2);
  POKEYSND_Update(136, byte, 0, SOUND_GAIN);
  break;
 case 135:
  POKEY_AUDF[POKEY_CHAN3] = byte;
  Update_Counter((POKEY_AUDCTL[0] & POKEY_CH3_CH4) ? ((1 << POKEY_CHAN4) | (1 << POKEY_CHAN3)) : (1 << POKEY_CHAN3));
  POKEYSND_Update(135, byte, 0, SOUND_GAIN);
  break;
 case 134:
  POKEY_AUDF[POKEY_CHAN4] = byte;
  Update_Counter(1 << POKEY_CHAN4);
  POKEYSND_Update(134, byte, 0, SOUND_GAIN);
  break;
 case 133:
  POKEY_IRQEN = byte;



  POKEY_IRQST |= ~byte & 0xf7;
  if ((~POKEY_IRQST & POKEY_IRQEN) == 0 && PBI_IRQ == 0)
   CPU_IRQ = 0;
  else
   CPU_GenerateIRQ();
  break;
 case 129:
  POKEY_SKSTAT |= 0xe0;
  break;
 case 132:
  if (!(POKEY_SKCTL & 4))
   pot_scanline = 0;
  break;
 case 131:



  if ((POKEY_SKCTL & 0x70) == 0x20 && POKEY_siocheck())
   SIO_PutByte(byte);

  if ((POKEY_SKCTL & 0x08) == 0x00) {

   POKEY_DELAYED_SEROUT_IRQ = SIO_SEROUT_INTERVAL;
   POKEY_IRQST |= 0x08;
   POKEY_DELAYED_XMTDONE_IRQ = SIO_XMTDONE_INTERVAL;
  }
  else {



                        POKEY_DELAYED_SEROUT_IRQ = 312*50*10*(POKEY_AUDF[POKEY_CHAN3] + POKEY_AUDF[POKEY_CHAN4]*0x100)/895000;

   if (POKEY_DELAYED_SEROUT_IRQ >= 3) {
                         POKEY_IRQST |= 0x08;
                         POKEY_DELAYED_XMTDONE_IRQ = 2*POKEY_DELAYED_SEROUT_IRQ - 2;
   }
   else {
    POKEY_DELAYED_SEROUT_IRQ = 0;
    POKEY_DELAYED_XMTDONE_IRQ = 0;
   }
  };



  break;
 case 128:
  POKEY_DivNIRQ[POKEY_CHAN1] = POKEY_DivNMax[POKEY_CHAN1];
  POKEY_DivNIRQ[POKEY_CHAN2] = POKEY_DivNMax[POKEY_CHAN2];
  POKEY_DivNIRQ[POKEY_CHAN4] = POKEY_DivNMax[POKEY_CHAN4];
  POKEYSND_Update(128, byte, 0, SOUND_GAIN);



  break;
 case 130:



  POKEY_SKCTL = byte;
  POKEYSND_Update(130, byte, 0, SOUND_GAIN);
  if (byte & 4)
   pot_scanline = 228;
  if ((byte & 0x03) == 0) {


   POKEY_DELAYED_SERIN_IRQ = 0;
   POKEY_DELAYED_SEROUT_IRQ = 0;
   POKEY_DELAYED_XMTDONE_IRQ = 0;
   CASSETTE_ResetPOKEY();

  }
  break;
 }
}
