
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {unsigned int command; unsigned char type; unsigned short addr; } ;
struct TYPE_2__ {struct PicoVideo video; } ;


 int CommandDma () ;
 TYPE_1__ Pico ;

__attribute__((used)) static void CommandChange(void)
{
  struct PicoVideo *pvid=&Pico.video;
  unsigned int cmd=0,addr=0;

  cmd=pvid->command;


  pvid->type=(unsigned char)(((cmd>>2)&0xc)|(cmd>>30));


  addr =(cmd>>16)&0x3fff;
  addr|=(cmd<<14)&0xc000;
  pvid->addr=(unsigned short)addr;


  if (cmd&0x80) CommandDma();
}
