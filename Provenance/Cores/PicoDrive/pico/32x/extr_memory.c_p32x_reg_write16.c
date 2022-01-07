
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int* regs; int comm_dirty_68k; } ;
struct TYPE_5__ {scalar_t__ cnt; } ;
struct TYPE_4__ {scalar_t__ m68krcycles_done; } ;


 int P32XS_ADEN ;
 int P32XS_FM ;
 int P32XS_nRES ;
 TYPE_3__ Pico32x ;
 int SH2_STATE_CPOLL ;
 int SekCyclesDone () ;
 int dreq0_write (int*,int) ;
 TYPE_2__ m68k_poll ;
 TYPE_1__ msh2 ;
 int p32x_pwm_write16 (int,int,int *,int) ;
 int p32x_reg_write8 (int,int) ;
 int p32x_reset_sh2s () ;
 int p32x_sh2_poll_event (int *,int ,int) ;
 int p32x_sync_sh2s (int) ;
 int * sh2s ;

__attribute__((used)) static void p32x_reg_write16(u32 a, u32 d)
{
  u16 *r = Pico32x.regs;
  a &= 0x3e;


  m68k_poll.cnt = 0;

  switch (a) {
    case 0x00:
      if ((d ^ r[0]) & d & P32XS_nRES)
        p32x_reset_sh2s();
      r[0] &= ~(P32XS_FM|P32XS_nRES|P32XS_ADEN);
      r[0] |= d & (P32XS_FM|P32XS_nRES|P32XS_ADEN);
      return;
    case 0x08:
      r[a / 2] = d & 0xff;
      return;
    case 0x0a:
      r[a / 2] = d & ~1;
      return;
    case 0x0c:
      r[a / 2] = d & 0xff;
      return;
    case 0x0e:
      r[a / 2] = d;
      return;
    case 0x10:
      r[a / 2] = d & ~3;
      return;
    case 0x12:
      dreq0_write(r, d);
      return;
    case 0x1a:
      r[a / 2] = d & 0x0101;
      return;
    case 0x30:
      d = (r[a / 2] & ~0x0f) | (d & 0x0f);
      r[a / 2] = d;
      p32x_pwm_write16(a, d, ((void*)0), SekCyclesDone());
      return;
  }


  if ((a & 0x30) == 0x20) {
    int cycles = SekCyclesDone();
    int comreg;

    if (r[a / 2] == d)
      return;

    comreg = 1 << (a & 0x0f) / 2;
    if (Pico32x.comm_dirty_68k & comreg)
      p32x_sync_sh2s(cycles);

    r[a / 2] = d;
    p32x_sh2_poll_event(&sh2s[0], SH2_STATE_CPOLL, cycles);
    p32x_sh2_poll_event(&sh2s[1], SH2_STATE_CPOLL, cycles);
    Pico32x.comm_dirty_68k |= comreg;

    if (cycles - (int)msh2.m68krcycles_done > 120)
      p32x_sync_sh2s(cycles);
    return;
  }

  else if ((a & 0x30) == 0x30) {
    p32x_pwm_write16(a, d, ((void*)0), SekCyclesDone());
    return;
  }

  p32x_reg_write8(a + 1, d);
}
