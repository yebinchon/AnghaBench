
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PsndRate ;
 short* cdda_out_buffer ;
 int cdda_out_pos ;
 int decoder_active ;
 void mix_16h_to_32 (int*,short*,int) ;
 void mix_16h_to_32_s1 (int*,short*,int) ;
 void mix_16h_to_32_s2 (int*,short*,int) ;
 int * mp3_current_file ;
 scalar_t__ mp3_file_len ;
 scalar_t__ mp3_file_pos ;
 int mp3dec_decode (int *,scalar_t__*,scalar_t__) ;

void mp3_update(int *buffer, int length, int stereo)
{
 int length_mp3, shr = 0;
 void (*mix_samples)(int *dest_buf, short *mp3_buf, int count) = mix_16h_to_32;

 if (mp3_current_file == ((void*)0) || mp3_file_pos >= mp3_file_len)
  return;

 if (!decoder_active)
  return;

 length_mp3 = length;
 if (PsndRate <= 11025 + 100) {
  mix_samples = mix_16h_to_32_s2;
  length_mp3 <<= 2; shr = 2;
 }
 else if (PsndRate <= 22050 + 100) {
  mix_samples = mix_16h_to_32_s1;
  length_mp3 <<= 1; shr = 1;
 }

 if (1152 - cdda_out_pos >= length_mp3) {
  mix_samples(buffer, cdda_out_buffer + cdda_out_pos * 2,
   length * 2);

  cdda_out_pos += length_mp3;
 } else {
  int ret, left = 1152 - cdda_out_pos;

  if (left > 0)
   mix_samples(buffer, cdda_out_buffer + cdda_out_pos * 2,
    (left >> shr) * 2);

  ret = mp3dec_decode(mp3_current_file, &mp3_file_pos,
   mp3_file_len);
  if (ret == 0) {
   cdda_out_pos = length_mp3 - left;
   mix_samples(buffer + (left >> shr) * 2,
    cdda_out_buffer,
    (cdda_out_pos >> shr) * 2);
  } else
   cdda_out_pos = 0;
 }
}
