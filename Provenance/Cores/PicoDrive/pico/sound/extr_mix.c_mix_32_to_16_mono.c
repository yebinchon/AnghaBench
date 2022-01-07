
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Limit (int,int ,int ) ;
 int MAXOUT ;
 int MINOUT ;

void mix_32_to_16_mono(short *dest, int *src, int count)
{
 int l;

 for (; count > 0; count--)
 {
  l = *dest;
  l += *src++;
  Limit( l, MAXOUT, MINOUT );
  *dest++ = l;
 }
}
