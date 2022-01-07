
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIA_PACTL ;
 int* POKEY_AUDCTL ;
 int* POKEY_AUDF ;
 int POKEY_SKCTL ;
 int VOICEBOX_enabled ;
 int VOICEBOX_ii ;
 int VOTRAXSND_PutByte (int) ;
 int printf (char*,int,int,int,int,int,int) ;

void VOICEBOX_SEROUTPutByte(int byte)
{
 if (!VOICEBOX_enabled || !VOICEBOX_ii) return;
 if (PIA_PACTL&0x08) return;
 if ((POKEY_SKCTL & 0x70) == 0x60 ) {
  int byte_swapped = 0;
  int i;
  for (i=0;i<8;i++) {
   byte_swapped += ((!!(byte&(1<<i)))<<(7-i));
  }



  VOTRAXSND_PutByte(byte_swapped);
 }
}
