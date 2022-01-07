
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* memory_map; } ;
struct TYPE_5__ {int write; int read; } ;
struct TYPE_4__ {int write16; int write8; int read16; int read8; } ;


 int WRITE_WORD (scalar_t__,unsigned int,unsigned int) ;
 TYPE_3__ m68k ;
 int m68k_lockup_r_16 ;
 int m68k_lockup_r_8 ;
 int m68k_lockup_w_16 ;
 int m68k_lockup_w_8 ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ tmss ;
 int vdp_read_byte ;
 int vdp_read_word ;
 int vdp_write_byte ;
 int vdp_write_word ;
 int zbank_lockup_r ;
 int zbank_lockup_w ;
 TYPE_2__* zbank_memory_map ;
 int zbank_read_vdp ;
 int zbank_write_vdp ;

void gen_tmss_w(unsigned int offset, unsigned int data)
{
  int i;


  WRITE_WORD(tmss, offset, data);


  if (memcmp((char *)tmss, "SEGA", 4) == 0)
  {
    for (i=0xc0; i<0xe0; i+=8)
    {
      m68k.memory_map[i].read8 = vdp_read_byte;
      m68k.memory_map[i].read16 = vdp_read_word;
      m68k.memory_map[i].write8 = vdp_write_byte;
      m68k.memory_map[i].write16 = vdp_write_word;
      zbank_memory_map[i].read = zbank_read_vdp;
      zbank_memory_map[i].write = zbank_write_vdp;
    }
  }
  else
  {
    for (i=0xc0; i<0xe0; i+=8)
    {
      m68k.memory_map[i].read8 = m68k_lockup_r_8;
      m68k.memory_map[i].read16 = m68k_lockup_r_16;
      m68k.memory_map[i].write8 = m68k_lockup_w_8;
      m68k.memory_map[i].write16 = m68k_lockup_w_16;
      zbank_memory_map[i].read = zbank_lockup_r;
      zbank_memory_map[i].write = zbank_lockup_w;
    }
  }
}
