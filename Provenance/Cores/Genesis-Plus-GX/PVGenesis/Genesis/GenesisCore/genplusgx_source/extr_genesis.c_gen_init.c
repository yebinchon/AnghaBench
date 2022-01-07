
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int addr_error; } ;
struct TYPE_7__ {TYPE_1__* memory_map; int aerr_enabled; } ;
struct TYPE_6__ {int * write; int read; } ;
struct TYPE_5__ {int * write16; int * write8; int * read16; int * read8; void* base; } ;





 int SYSTEM_MCD ;
 int SYSTEM_MD ;

 int SYSTEM_PICO ;



 TYPE_4__ config ;
 int * ctrl_io_read_byte ;
 int * ctrl_io_read_word ;
 int * ctrl_io_write_byte ;
 int * ctrl_io_write_word ;
 TYPE_3__ m68k ;
 int m68k_init () ;
 int * m68k_lockup_r_16 ;
 int * m68k_lockup_r_8 ;
 int * m68k_lockup_w_16 ;
 int * m68k_lockup_w_8 ;
 int * m68k_read_bus_16 ;
 int * m68k_read_bus_8 ;
 void* m68k_unused_16_w ;
 void* m68k_unused_8_w ;
 int md_cart_init () ;
 scalar_t__ pico_current ;
 int * pico_read_byte ;
 int * pico_read_word ;
 int s68k_init () ;
 int scd_init () ;
 int sms_cart_init () ;
 int system_hw ;
 int * vdp_read_byte ;
 int * vdp_read_word ;
 int * vdp_write_byte ;
 int * vdp_write_word ;
 void* work_ram ;
 int z80_gg_port_r ;
 int z80_gg_port_w ;
 int z80_init (int ,int ) ;
 int z80_irq_callback ;
 int z80_m3_port_r ;
 int z80_m3_port_w ;
 int z80_md_port_r ;
 int z80_md_port_w ;
 int z80_memory_r ;
 int z80_memory_w ;
 int z80_ms_port_r ;
 int z80_ms_port_w ;
 int ** z80_readmap ;
 int z80_readmem ;
 int z80_readport ;
 int z80_sg_port_r ;
 int z80_sg_port_w ;
 int z80_unused_port_r ;
 int z80_unused_port_w ;
 int z80_writemem ;
 int z80_writeport ;
 int zbank_lockup_r ;
 int * zbank_lockup_w ;
 TYPE_2__* zbank_memory_map ;
 int zbank_read_ctrl_io ;
 int zbank_read_vdp ;
 int zbank_unused_r ;
 int * zbank_write_ctrl_io ;
 int * zbank_write_vdp ;
 int * zram ;

void gen_init(void)
{
  int i;


  z80_init(0,z80_irq_callback);


  if ((system_hw & 131) == SYSTEM_MD)
  {

    m68k_init();
    m68k.aerr_enabled = config.addr_error;




    for (i=0x80; i<0xe0; i++)
    {
      m68k.memory_map[i].base = work_ram;
      m68k.memory_map[i].read8 = m68k_lockup_r_8;
      m68k.memory_map[i].read16 = m68k_lockup_r_16;
      m68k.memory_map[i].write8 = m68k_lockup_w_8;
      m68k.memory_map[i].write16 = m68k_lockup_w_16;
      zbank_memory_map[i].read = zbank_lockup_r;
      zbank_memory_map[i].write = zbank_lockup_w;
    }


    for (i=0xc0; i<0xe0; i+=8)
    {
      m68k.memory_map[i].read8 = vdp_read_byte;
      m68k.memory_map[i].read16 = vdp_read_word;
      m68k.memory_map[i].write8 = vdp_write_byte;
      m68k.memory_map[i].write16 = vdp_write_word;
      zbank_memory_map[i].read = zbank_read_vdp;
      zbank_memory_map[i].write = zbank_write_vdp;
    }


    for (i=0xe0; i<0x100; i++)
    {
      m68k.memory_map[i].base = work_ram;
      m68k.memory_map[i].read8 = ((void*)0);
      m68k.memory_map[i].read16 = ((void*)0);
      m68k.memory_map[i].write8 = ((void*)0);
      m68k.memory_map[i].write16 = ((void*)0);


      zbank_memory_map[i].read = zbank_unused_r;
      zbank_memory_map[i].write = ((void*)0);
    }

    if (system_hw == SYSTEM_PICO)
    {

      m68k.memory_map[0x80].read8 = pico_read_byte;
      m68k.memory_map[0x80].read16 = pico_read_word;
      m68k.memory_map[0x80].write8 = m68k_unused_8_w;
      m68k.memory_map[0x80].write16 = m68k_unused_16_w;


      m68k.memory_map[0xa1].read8 = m68k_read_bus_8;
      m68k.memory_map[0xa1].read16 = m68k_read_bus_16;
      m68k.memory_map[0xa1].write8 = m68k_unused_8_w;
      m68k.memory_map[0xa1].write16 = m68k_unused_16_w;


      pico_current = 0;
    }
    else
    {

      m68k.memory_map[0xa1].read8 = ctrl_io_read_byte;
      m68k.memory_map[0xa1].read16 = ctrl_io_read_word;
      m68k.memory_map[0xa1].write8 = ctrl_io_write_byte;
      m68k.memory_map[0xa1].write16 = ctrl_io_write_word;
      zbank_memory_map[0xa1].read = zbank_read_ctrl_io;
      zbank_memory_map[0xa1].write = zbank_write_ctrl_io;




      for (i=0; i<64; i++)
      {
        z80_readmap[i] = &zram[(i & 7) << 10];
      }


      z80_writemem = z80_memory_w;
      z80_readmem = z80_memory_r;


      z80_writeport = z80_unused_port_w;
      z80_readport = z80_unused_port_r;
    }


    if (system_hw == SYSTEM_MCD)
    {

      s68k_init();


      scd_init();
    }
    else
    {

      md_cart_init();
    }
  }
  else
  {

    sms_cart_init();


    switch (system_hw)
    {

      case 131:
      {
        z80_writeport = z80_md_port_w;
        z80_readport = z80_md_port_r;
        break;
      }


      case 134:
      case 133:
      {

        sms_cart_init();


        z80_writeport = z80_gg_port_w;
        z80_readport = z80_gg_port_r;
        break;
      }


      case 129:
      case 128:
      {
        z80_writeport = z80_ms_port_w;
        z80_readport = z80_ms_port_r;
        break;
      }


      case 132:
      {
        z80_writeport = z80_m3_port_w;
        z80_readport = z80_m3_port_r;
        break;
      }


      case 130:
      {
        z80_writeport = z80_sg_port_w;
        z80_readport = z80_sg_port_r;
        break;
      }
    }
  }
}
