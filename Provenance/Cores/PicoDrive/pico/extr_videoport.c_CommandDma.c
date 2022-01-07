
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {struct PicoVideo video; } ;


 int DmaCopy (int) ;
 int DmaSlow (int) ;
 int GetDmaLength () ;
 TYPE_1__ Pico ;

__attribute__((used)) static void CommandDma(void)
{
  struct PicoVideo *pvid=&Pico.video;
  int len=0,method=0;

  if ((pvid->reg[1]&0x10)==0) return;

  len=GetDmaLength();

  method=pvid->reg[0x17]>>6;
  if (method< 2) DmaSlow(len);
  if (method==3) DmaCopy(len);
}
