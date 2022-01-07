
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int rom; } ;
struct TYPE_7__ {unsigned int* regs; int* addr; int* data; int rom; } ;
struct TYPE_6__ {TYPE_1__* memory_map; } ;
struct TYPE_5__ {int write16; int write8; int * read16; int * read8; int base; } ;


 TYPE_4__ cart ;
 TYPE_3__ ggenie ;
 int * ggenie_read_byte ;
 int * ggenie_read_word ;
 int ggenie_switch (int) ;
 int ggenie_write_byte ;
 int ggenie_write_word ;
 TYPE_2__ m68k ;
 int m68k_unused_16_w ;
 int m68k_unused_8_w ;

__attribute__((used)) static void ggenie_write_regs(unsigned int offset, unsigned int data)
{

  ggenie.regs[offset] = data;


  if (offset == 0)
  {

    if (data & 0x400)
    {

      m68k.memory_map[0].base = cart.rom;
      m68k.memory_map[0].read8 = ((void*)0);
      m68k.memory_map[0].read16 = ((void*)0);
    }
    else
    {

      m68k.memory_map[0].base = ggenie.rom;
      m68k.memory_map[0].read8 = ((void*)0);
      m68k.memory_map[0].read16 = ((void*)0);


      if (data & 0x200)
      {


        m68k.memory_map[0].read8 = ggenie_read_byte;
        m68k.memory_map[0].read16 = ggenie_read_word;
      }
    }


    if (data & 0x100)
    {


      ggenie.addr[0] = ((ggenie.regs[2] & 0x3f) << 16) | ggenie.regs[3];
      ggenie.addr[1] = ((ggenie.regs[5] & 0x3f) << 16) | ggenie.regs[6];
      ggenie.addr[2] = ((ggenie.regs[8] & 0x3f) << 16) | ggenie.regs[9];
      ggenie.addr[3] = ((ggenie.regs[11] & 0x3f) << 16) | ggenie.regs[12];
      ggenie.addr[4] = ((ggenie.regs[14] & 0x3f) << 16) | ggenie.regs[15];
      ggenie.addr[5] = ((ggenie.regs[17] & 0x3f) << 16) | ggenie.regs[18];


      ggenie.data[0] = ggenie.regs[4];
      ggenie.data[1] = ggenie.regs[7];
      ggenie.data[2] = ggenie.regs[10];
      ggenie.data[3] = ggenie.regs[13];
      ggenie.data[4] = ggenie.regs[16];
      ggenie.data[5] = ggenie.regs[19];


      m68k.memory_map[0].write8 = m68k_unused_8_w;
      m68k.memory_map[0].write16 = m68k_unused_16_w;




      ggenie_switch(1);
    }
    else
    {
      m68k.memory_map[0].write8 = ggenie_write_byte;
      m68k.memory_map[0].write16 = ggenie_write_word;
    }
  }


  else if (offset == 1)
  {
    ggenie.regs[1] |= 1;
  }
}
