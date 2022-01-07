
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {struct PicoVideo video; } ;


 TYPE_1__ Pico ;

__attribute__((used)) static int GetDmaLength(void)
{
  struct PicoVideo *pvid=&Pico.video;
  int len=0;

  len =pvid->reg[0x13];
  len|=pvid->reg[0x14]<<8;

  if(!len) len = 0xffff;
  return len;
}
