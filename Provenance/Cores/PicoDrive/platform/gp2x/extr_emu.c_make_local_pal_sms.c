
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short* cram; } ;


 TYPE_1__ Pico ;
 scalar_t__ localPal ;

__attribute__((used)) static int make_local_pal_sms(int fast_mode)
{
 unsigned short *spal = Pico.cram;
 unsigned int *dpal = (void *)localPal;
 unsigned int i, t;

 for (i = 0x40; i > 0; i--) {
  t = *spal++;
  t = ((t & 0x0003) << 22) | ((t & 0x000c) << 12) | ((t & 0x0030) << 2);
  t |= t >> 2;
  t |= t >> 4;
  *dpal++ = t;
 }

 return 0x40;
}
