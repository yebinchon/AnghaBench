
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void mix_16h_to_32_s2(int *dest_buf, short *mp3_buf, int count)
{
 count >>= 1;
 while (count--)
 {
  *dest_buf++ += *mp3_buf++ >> 1;
  *dest_buf++ += *mp3_buf++ >> 1;
  mp3_buf += 3*2;
 }
}
