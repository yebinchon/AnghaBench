
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIA_PACTL ;
 int VOICEBOX_enabled ;
 scalar_t__ VOICEBOX_ii ;
 int VOTRAXSND_PutByte (int) ;
 int printf (char*,int) ;

void VOICEBOX_SKCTLPutByte(int byte)
{
 static int prev_byte;
 static int prev_prev_byte;
 static int voice_box_byte;
 static int voice_box_bit;
 if (!VOICEBOX_enabled || VOICEBOX_ii) return;
 if (PIA_PACTL&0x08) return;



 if (prev_prev_byte == 0xf7 && prev_byte == 0x03 && (byte == 0xff || byte == 0x03)) {
  if (byte != 0x03) {
   voice_box_byte += (1<< (7-voice_box_bit));
  }
  voice_box_bit++;
  if (voice_box_bit > 7 ) {
   voice_box_bit = 0;



   VOTRAXSND_PutByte(voice_box_byte);
   voice_box_byte = 0;
  }
 }
 prev_prev_byte = prev_byte;
 prev_byte = byte;
}
