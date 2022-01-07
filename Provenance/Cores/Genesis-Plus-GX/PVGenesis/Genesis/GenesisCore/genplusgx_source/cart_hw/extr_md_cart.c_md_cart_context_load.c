
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef int ssp1601_t ;
struct TYPE_9__ {int * regs; } ;
struct TYPE_14__ {scalar_t__ rom; TYPE_2__ hw; } ;
struct TYPE_13__ {TYPE_1__* memory_map; } ;
struct TYPE_12__ {scalar_t__ sram; } ;
struct TYPE_11__ {int ssp1601; int * dram; int * iram_rom; } ;
struct TYPE_10__ {void* write; int * read; } ;
struct TYPE_8__ {scalar_t__ base; int write16; void* write8; int * read16; int * read8; } ;


 TYPE_7__ cart ;
 int load_param (int *,int) ;
 TYPE_6__ m68k ;
 int m68k_unused_16_w ;
 void* m68k_unused_8_w ;
 TYPE_5__ sram ;
 void* sram_read_byte ;
 int * sram_read_word ;
 void* sram_write_byte ;
 int sram_write_word ;
 TYPE_4__* svp ;
 TYPE_3__* zbank_memory_map ;
 void* zbank_unused_w ;

int md_cart_context_load(uint8 *state)
{
  int i;
  int bufferptr = 0;
  uint8 offset;


  for (i=0; i<0x40; i++)
  {

    offset = state[bufferptr++];

    if (offset == 0xff)
    {

      m68k.memory_map[i].base = sram.sram;
      m68k.memory_map[i].read8 = sram_read_byte;
      m68k.memory_map[i].read16 = sram_read_word;
      m68k.memory_map[i].write8 = sram_write_byte;
      m68k.memory_map[i].write16 = sram_write_word;
      zbank_memory_map[i].read = sram_read_byte;
      zbank_memory_map[i].write = sram_write_byte;

    }
    else
    {

      if (m68k.memory_map[i].base == sram.sram)
      {
        m68k.memory_map[i].read8 = ((void*)0);
        m68k.memory_map[i].read16 = ((void*)0);
        m68k.memory_map[i].write8 = m68k_unused_8_w;
        m68k.memory_map[i].write16 = m68k_unused_16_w;
        zbank_memory_map[i].read = ((void*)0);
        zbank_memory_map[i].write = zbank_unused_w;
      }


      m68k.memory_map[i].base = cart.rom + (offset << 16);
    }
  }


  load_param(cart.hw.regs, sizeof(cart.hw.regs));


  if (svp)
  {
    load_param(svp->iram_rom, 0x800);
    load_param(svp->dram,sizeof(svp->dram));
    load_param(&svp->ssp1601,sizeof(ssp1601_t));
  }

  return bufferptr;
}
