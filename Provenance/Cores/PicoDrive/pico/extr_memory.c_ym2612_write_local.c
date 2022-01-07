
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int address; int TA; int mode; int TB; int status; } ;
struct TYPE_5__ {TYPE_1__ ST; } ;
struct TYPE_6__ {int dacout; int dacen; int addr_A1; int* REGS; TYPE_2__ OPN; } ;


 int EL_YMTIMER ;
 int POPT_EXT_FM ;
 int PicoOpt ;
 int PsndDacLine ;
 int PsndDoDAC (int) ;
 scalar_t__ PsndOut ;
 int TIMER_A_TICK_ZCYCLES ;
 int TIMER_B_TICK_ZCYCLES ;
 int YM2612Write_ (int,int) ;
 int YM2612Write_940 (int,int,int) ;
 int elprintf (int ,char*,int,...) ;
 int get_scanline (int) ;
 int timer_a_next_oflow ;
 int timer_a_step ;
 int timer_b_next_oflow ;
 int timer_b_step ;
 TYPE_3__ ym2612 ;
 int ym2612_sync_timers (int,int,int) ;
 int z80_cyclesDone () ;
 int z80_cycles_from_68k () ;

__attribute__((used)) static int ym2612_write_local(u32 a, u32 d, int is_from_z80)
{
  int addr;

  a &= 3;
  if (a == 1 && ym2612.OPN.ST.address == 0x2a)
  {
    int scanline = get_scanline(is_from_z80);

    ym2612.dacout = ((int)d - 0x80) << 6;
    if (PsndOut && ym2612.dacen && scanline >= PsndDacLine)
      PsndDoDAC(scanline);
    return 0;
  }

  switch (a)
  {
    case 0:
      ym2612.OPN.ST.address = d;
      ym2612.addr_A1 = 0;



      return 0;

    case 1:
      if (ym2612.addr_A1 != 0)
        return 0;

      addr = ym2612.OPN.ST.address;
      ym2612.REGS[addr] = d;

      switch (addr)
      {
        case 0x24:
        case 0x25: {
          int TAnew = (addr == 0x24) ? ((ym2612.OPN.ST.TA & 0x03)|(((int)d)<<2))
                                     : ((ym2612.OPN.ST.TA & 0x3fc)|(d&3));
          if (ym2612.OPN.ST.TA != TAnew)
          {

            ym2612.OPN.ST.TA = TAnew;


            timer_a_step = TIMER_A_TICK_ZCYCLES * (1024 - TAnew);
            if (ym2612.OPN.ST.mode & 1) {

              int cycles = is_from_z80 ? z80_cyclesDone() : z80_cycles_from_68k();
              timer_a_next_oflow = (cycles << 8) + timer_a_step;
            }
            elprintf(EL_YMTIMER, "timer a set to %i, %i", 1024 - TAnew, timer_a_next_oflow>>8);
          }
          return 0;
        }
        case 0x26:
          if (ym2612.OPN.ST.TB != d) {

            ym2612.OPN.ST.TB = d;


            timer_b_step = TIMER_B_TICK_ZCYCLES * (256 - d);
            if (ym2612.OPN.ST.mode & 2) {
              int cycles = is_from_z80 ? z80_cyclesDone() : z80_cycles_from_68k();
              timer_b_next_oflow = (cycles << 8) + timer_b_step;
            }
            elprintf(EL_YMTIMER, "timer b set to %i, %i", 256 - d, timer_b_next_oflow>>8);
          }
          return 0;
        case 0x27: {
          int old_mode = ym2612.OPN.ST.mode;
          int cycles = is_from_z80 ? z80_cyclesDone() : z80_cycles_from_68k();
          ym2612.OPN.ST.mode = d;

          elprintf(EL_YMTIMER, "st mode %02x", d);
          ym2612_sync_timers(cycles, old_mode, d);


          if (d & 0x10)
            ym2612.OPN.ST.status &= ~1;


          if (d & 0x20)
            ym2612.OPN.ST.status &= ~2;

          if ((d ^ old_mode) & 0xc0) {



            return 1;
          }
          return 0;
        }
        case 0x2b: {
          int scanline = get_scanline(is_from_z80);
          ym2612.dacen = d & 0x80;
          if (d & 0x80) PsndDacLine = scanline;



          return 0;
        }
      }
      break;

    case 2:
      ym2612.OPN.ST.address = d;
      ym2612.addr_A1 = 1;



      return 0;

    case 3:
      if (ym2612.addr_A1 != 1)
        return 0;

      addr = ym2612.OPN.ST.address | 0x100;
      ym2612.REGS[addr] = d;
      break;
  }





  return YM2612Write_(a, d);
}
