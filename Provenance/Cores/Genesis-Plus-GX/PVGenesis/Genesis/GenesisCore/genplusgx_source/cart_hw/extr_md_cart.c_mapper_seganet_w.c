
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {TYPE_1__* memory_map; } ;
struct TYPE_5__ {int * write; } ;
struct TYPE_4__ {int * write16; int * write8; } ;


 TYPE_3__ m68k ;
 int * m68k_unused_16_w ;
 int * m68k_unused_8_w ;
 TYPE_2__* zbank_memory_map ;
 int * zbank_unused_w ;

__attribute__((used)) static void mapper_seganet_w(uint32 address, uint32 data)
{
  if ((address & 0xff) == 0xf1)
  {
    int i;
    if (data & 1)
    {

      for (i=0; i<0x40; i++)
      {
        m68k.memory_map[i].write8 = m68k_unused_8_w;
        m68k.memory_map[i].write16 = m68k_unused_16_w;
        zbank_memory_map[i].write = zbank_unused_w;
      }
    }
    else
    {

      for (i=0; i<0x40; i++)
      {
        m68k.memory_map[i].write8 = ((void*)0);
        m68k.memory_map[i].write16 = ((void*)0);
        zbank_memory_map[i].write = ((void*)0);
      }
    }
  }
}
