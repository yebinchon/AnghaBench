
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_11__ {int* regs; int* sh2_regs; int* sh2irq_mask; int dmac0_fifo_ptr; int* dmac_fifo; int comm_dirty_68k; } ;
struct TYPE_10__ {size_t is_slave; } ;
typedef TYPE_1__ SH2 ;


 int EL_32X ;
 int EL_ANOMALY ;
 int P32XS_FM ;
 int P32XS_FULL ;
 TYPE_9__ Pico32x ;
 int SH2_STATE_CPOLL ;
 int elprintf_sh2 (TYPE_1__*,int,char*,int,int ) ;
 int memmove (int*,int*,int) ;
 int p32x_pwm_read16 (int,TYPE_1__*,int ) ;
 int sh2_cycles_done_m68k (TYPE_1__*) ;
 int sh2_pc (TYPE_1__*) ;
 int sh2_poll_detect (TYPE_1__*,int,int ,int) ;
 int sh2s_sync_on_read (TYPE_1__*) ;

__attribute__((used)) static u32 p32x_sh2reg_read16(u32 a, SH2 *sh2)
{
  u16 *r = Pico32x.regs;
  a &= 0x3e;

  switch (a) {
    case 0x00:
      return (r[0] & P32XS_FM) | Pico32x.sh2_regs[0]
        | Pico32x.sh2irq_mask[sh2->is_slave];
    case 0x04:
      sh2_poll_detect(sh2, a, SH2_STATE_CPOLL, 3);
      sh2s_sync_on_read(sh2);
      return Pico32x.sh2_regs[4 / 2];
    case 0x06:
      return (r[a / 2] & ~P32XS_FULL) | 0x4000;
    case 0x08:
    case 0x0a:
    case 0x0c:
    case 0x0e:
    case 0x10:
      return r[a / 2];
    case 0x12:
      if (Pico32x.dmac0_fifo_ptr > 0) {
        Pico32x.dmac0_fifo_ptr--;
        r[a / 2] = Pico32x.dmac_fifo[0];
        memmove(&Pico32x.dmac_fifo[0], &Pico32x.dmac_fifo[1],
          Pico32x.dmac0_fifo_ptr * 2);
      }
      return r[a / 2];
    case 0x14:
    case 0x16:
    case 0x18:
    case 0x1a:
    case 0x1c:
      return 0;
  }


  if ((a & 0x30) == 0x20) {
    int comreg = 1 << (a & 0x0f) / 2;
    if (Pico32x.comm_dirty_68k & comreg)
      Pico32x.comm_dirty_68k &= ~comreg;
    else
      sh2_poll_detect(sh2, a, SH2_STATE_CPOLL, 3);
    sh2s_sync_on_read(sh2);
    return r[a / 2];
  }
  if ((a & 0x30) == 0x30)
    return p32x_pwm_read16(a, sh2, sh2_cycles_done_m68k(sh2));

  elprintf_sh2(sh2, EL_32X|EL_ANOMALY,
    "unhandled sysreg r16 [%02x] @%08x", a, sh2_pc(sh2));
  return 0;
}
