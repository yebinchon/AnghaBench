
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void mix_16h_to_32(int *dest_buf, short *mp3_buf, int count)
{
 while (count--)
 {
  *dest_buf++ += *mp3_buf++ >> 1;
 }
}
