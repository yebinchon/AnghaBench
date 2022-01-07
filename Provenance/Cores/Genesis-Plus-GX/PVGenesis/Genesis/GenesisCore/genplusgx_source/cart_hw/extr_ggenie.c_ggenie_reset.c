
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rom; int addr; int data; int old; int regs; scalar_t__ enabled; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {int * read16; int write16; int write8; int base; } ;


 TYPE_3__ ggenie ;
 int ggenie_switch (int ) ;
 int ggenie_write_byte ;
 int ggenie_write_word ;
 TYPE_2__ m68k ;
 int memset (int ,int ,int) ;

void ggenie_reset(int hard)
{
  if (ggenie.enabled)
  {
    if (hard)
    {

      ggenie_switch(0);


      memset(ggenie.regs,0,sizeof(ggenie.regs));
      memset(ggenie.old,0,sizeof(ggenie.old));
      memset(ggenie.data,0,sizeof(ggenie.data));
      memset(ggenie.addr,0,sizeof(ggenie.addr));
    }


    m68k.memory_map[0].base = ggenie.rom;


    m68k.memory_map[0].write8 = ggenie_write_byte;
    m68k.memory_map[0].write16 = ggenie_write_word;


    m68k.memory_map[0].read16 = ((void*)0);
  }
}
