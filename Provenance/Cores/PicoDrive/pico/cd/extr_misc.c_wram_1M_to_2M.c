
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void wram_1M_to_2M(unsigned char *m)
{
 unsigned short *m1M_b0, *m1M_b1;
 unsigned int i, tmp, *m2M;

 m2M = (unsigned int *) m;
 m1M_b0 = (unsigned short *) (m + 0x20000);
 m1M_b1 = (unsigned short *) (m + 0x40000);

 for (i = 0x40000/4; i; i--)
 {
  tmp = *m1M_b0++ | (*m1M_b1++ << 16);
  *m2M++ = tmp;
 }
}
