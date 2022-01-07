
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef unsigned int uint16 ;
struct TYPE_25__ {int emu_status; TYPE_7__* gr; } ;
struct TYPE_26__ {TYPE_8__ ssp1601; } ;
struct TYPE_23__ {unsigned int h; } ;
struct TYPE_24__ {TYPE_6__ byte; } ;
struct TYPE_22__ {int (* time_w ) (unsigned int,unsigned int) ;} ;
struct TYPE_20__ {int l; int h; } ;
struct TYPE_21__ {int w; TYPE_3__ byte; } ;
struct TYPE_19__ {int base; } ;
struct TYPE_18__ {int boot; } ;
struct TYPE_17__ {TYPE_5__ hw; } ;
struct TYPE_16__ {int bios; } ;
struct TYPE_15__ {char* cycles; TYPE_2__* memory_map; int pc; } ;
struct TYPE_14__ {int pending; int dmna; TYPE_4__* regs; TYPE_1__ cartridge; int prg_ram; } ;


 size_t SSP_PM0 ;
 int SSP_WAIT_PM0 ;
 size_t SSP_XST ;
 int SYSTEM_MCD ;
 TYPE_13__ cart ;
 TYPE_12__ config ;
 int error (char*,int ,char*,unsigned int,unsigned int,int ) ;
 int gen_tmss_w (unsigned int,unsigned int) ;
 int gen_zbusreq_w (unsigned int,char*) ;
 int gen_zreset_w (unsigned int,char*) ;
 int io_68k_write (unsigned int,unsigned int) ;
 TYPE_11__ m68k ;
 int m68k_lockup_w_16 (unsigned int,unsigned int) ;
 int m68k_poll_sync (unsigned int) ;
 int m68k_unused_16_w (unsigned int,unsigned int) ;
 int s68k_clear_halt () ;
 int s68k_pulse_halt () ;
 int s68k_pulse_reset () ;
 int s68k_update_irq (int) ;
 TYPE_10__ scd ;
 int stub1 (unsigned int,unsigned int) ;
 TYPE_9__* svp ;
 int system_hw ;
 int v_counter ;

void ctrl_io_write_word(unsigned int address, unsigned int data)
{
  switch ((address >> 8) & 0xFF)
  {
    case 0x00:
    {
      if (!(address & 0xE0))
      {
        io_68k_write((address >> 1) & 0x0F, data & 0xFF);
        return;
      }
      m68k_unused_16_w(address, data);
      return;
    }

    case 0x11:
    {
      gen_zbusreq_w((data >> 8) & 1, m68k.cycles);
      return;
    }

    case 0x12:
    {
      gen_zreset_w((data >> 8) & 1, m68k.cycles);
      return;
    }

    case 0x20:
    {



      if (system_hw == SYSTEM_MCD)
      {

        switch (address & 0x3e)
        {
          case 0x00:
          {

            if (data & 0x01)
            {

              if (!(scd.regs[0x00].byte.l & 0x01))
              {

                s68k_pulse_reset();
              }


              if (data & 0x02)
              {

                s68k_pulse_halt();
              }
              else
              {

                s68k_clear_halt();
              }
            }
            else
            {

              s68k_pulse_halt();
            }


            if (data & 0x100)
            {

              if (scd.regs[0x32>>1].byte.l & 0x04)
              {

                scd.regs[0x00].byte.h |= 0x01;


                scd.pending |= (1 << 2);


                s68k_update_irq((scd.pending & scd.regs[0x32>>1].byte.l) >> 1);
              }
            }


            scd.regs[0x00].byte.l = data & 0xff;
            return;
          }

          case 0x02:
          {
            m68k_poll_sync(0x02);


            m68k.memory_map[scd.cartridge.boot + 0x02].base = scd.prg_ram + ((data & 0xc0) << 11);
            m68k.memory_map[scd.cartridge.boot + 0x03].base = m68k.memory_map[scd.cartridge.boot + 0x02].base + 0x10000;


            if (scd.regs[0x03>>1].byte.l & 0x04)
            {

              if (data & 0x02)
              {

                scd.dmna = 1;
              }
              else
              {

                data |= 0x02;


                scd.regs[0x02>>1].w = (scd.regs[0x02>>1].w & ~0xffc2) | (data & 0xffc2);
                return;
              }
            }
            else
            {

              if (data & 0x02)
              {

                scd.dmna = 1;


                scd.regs[0x02>>1].w = (scd.regs[0x02>>1].w & ~0xffc3) | (data & 0xffc2);
                return;
              }
            }


            scd.regs[0x02>>1].w = (scd.regs[0x02>>1].w & ~0xffc0) | (data & 0xffc0);
            return;
          }

          case 0x06:
          {
            *(uint16 *)(m68k.memory_map[0].base + 0x72) = data;
            return;
          }

          case 0x0e:
          {
            m68k_poll_sync(0x0e);


            scd.regs[0x0e>>1].byte.h = data;
            return;
          }

          default:
          {

            if ((address & 0x30) == 0x10)
            {
              m68k_poll_sync(address & 0x1e);
              scd.regs[(address >> 1) & 0xff].w = data;
              return;
            }


            m68k_unused_16_w (address, data);
            return;
          }
        }
      }

      m68k_unused_16_w (address, data);
      return;
    }

    case 0x30:
    {
      cart.hw.time_w(address, data);
      return;
    }

    case 0x40:
    {
      if (config.bios & 1)
      {
        gen_tmss_w(address & 3, data);
        return;
      }
      m68k_unused_16_w(address, data);
      return;
    }

    case 0x50:
    {
      if (!(address & 0xFD))
      {
        svp->ssp1601.gr[SSP_XST].byte.h = data;
        svp->ssp1601.gr[SSP_PM0].byte.h |= 2;
        svp->ssp1601.emu_status &= ~SSP_WAIT_PM0;
        return;
      }
      m68k_unused_16_w(address, data);
      return;
    }

    case 0x10:
    case 0x13:
    case 0x41:
    case 0x44:
    {
      m68k_unused_16_w (address, data);
      return;
    }

    default:
    {
      m68k_lockup_w_16 (address, data);
      return;
    }
  }
}
