
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Limit (int,int ,int ) ;
 int MAXOUT ;
 int MINOUT ;

void mix_32_to_16l_stereo(short *dest, int *src, int count)
{
 int l, r;

 for (; count > 0; count--)
 {
  l = r = *dest;
  l += *src++;
  r += *src++;
  Limit( l, MAXOUT, MINOUT );
  Limit( r, MAXOUT, MINOUT );
  *dest++ = l;
  *dest++ = r;
 }
}
