
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_BUSREQ ;
 scalar_t__ cycles_68k_to_z80 (int) ;
 int elprintf (int ,char*,int,int,int,int,int) ;
 unsigned int last_z80_sync ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;
 int z80 ;
 int z80_cycle_aim ;
 int z80_cycle_cnt ;
 scalar_t__ z80_run (int) ;

void PicoSyncZ80(unsigned int m68k_cycles_done)
{
  int m68k_cnt;
  int cnt;

  m68k_cnt = m68k_cycles_done - last_z80_sync;
  z80_cycle_aim += cycles_68k_to_z80(m68k_cnt);
  cnt = z80_cycle_aim - z80_cycle_cnt;
  last_z80_sync = m68k_cycles_done;

  pprof_start(z80);

  elprintf(EL_BUSREQ, "z80 sync %i (%u|%u -> %u|%u)", cnt,
    z80_cycle_cnt, z80_cycle_cnt / 288,
    z80_cycle_aim, z80_cycle_aim / 288);

  if (cnt > 0)
    z80_cycle_cnt += z80_run(cnt);

  pprof_end(z80);
}
