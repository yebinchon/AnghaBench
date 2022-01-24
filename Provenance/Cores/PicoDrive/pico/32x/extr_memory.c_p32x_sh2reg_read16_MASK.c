#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_11__ {int* regs; int* sh2_regs; int* sh2irq_mask; int dmac0_fifo_ptr; int* dmac_fifo; int comm_dirty_68k; } ;
struct TYPE_10__ {size_t is_slave; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int EL_32X ; 
 int EL_ANOMALY ; 
 int P32XS_FM ; 
 int P32XS_FULL ; 
 TYPE_9__ Pico32x ; 
 int /*<<< orphan*/  SH2_STATE_CPOLL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static u32 FUNC7(u32 a, SH2 *sh2)
{
  u16 *r = Pico32x.regs;
  a &= 0x3e;

  switch (a) {
    case 0x00: // adapter/irq ctl
      return (r[0] & P32XS_FM) | Pico32x.sh2_regs[0]
        | Pico32x.sh2irq_mask[sh2->is_slave];
    case 0x04: // H count (often as comm too)
      FUNC5(sh2, a, SH2_STATE_CPOLL, 3);
      FUNC6(sh2);
      return Pico32x.sh2_regs[4 / 2];
    case 0x06:
      return (r[a / 2] & ~P32XS_FULL) | 0x4000;
    case 0x08: // DREQ src
    case 0x0a:
    case 0x0c: // DREQ dst
    case 0x0e:
    case 0x10: // DREQ len
      return r[a / 2];
    case 0x12: // DREQ FIFO - does this work on hw?
      if (Pico32x.dmac0_fifo_ptr > 0) {
        Pico32x.dmac0_fifo_ptr--;
        r[a / 2] = Pico32x.dmac_fifo[0];
        FUNC1(&Pico32x.dmac_fifo[0], &Pico32x.dmac_fifo[1],
          Pico32x.dmac0_fifo_ptr * 2);
      }
      return r[a / 2];
    case 0x14:
    case 0x16:
    case 0x18:
    case 0x1a:
    case 0x1c:
      return 0; // ?
  }

  // comm port
  if ((a & 0x30) == 0x20) {
    int comreg = 1 << (a & 0x0f) / 2;
    if (Pico32x.comm_dirty_68k & comreg)
      Pico32x.comm_dirty_68k &= ~comreg;
    else
      FUNC5(sh2, a, SH2_STATE_CPOLL, 3);
    FUNC6(sh2);
    return r[a / 2];
  }
  if ((a & 0x30) == 0x30)
    return FUNC2(a, sh2, FUNC3(sh2));

  FUNC0(sh2, EL_32X|EL_ANOMALY, 
    "unhandled sysreg r16 [%02x] @%08x", a, FUNC4(sh2));
  return 0;
}