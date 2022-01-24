#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_2__ {int dmac0_fifo_ptr; int /*<<< orphan*/ * dmac_fifo; } ;

/* Variables and functions */
 int DMAC_FIFO_LEN ; 
 int EL_32X ; 
 int EL_ANOMALY ; 
 int P32XS_68S ; 
 int P32XS_FULL ; 
 TYPE_1__ Pico32x ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u16 *r, u32 d)
{
  if (!(r[6 / 2] & P32XS_68S)) {
    FUNC1(EL_32X|EL_ANOMALY, "DREQ FIFO w16 without 68S?");
    return; // ignored - tested
  }
  if (Pico32x.dmac0_fifo_ptr < DMAC_FIFO_LEN) {
    Pico32x.dmac_fifo[Pico32x.dmac0_fifo_ptr++] = d;
    if (Pico32x.dmac0_fifo_ptr == DMAC_FIFO_LEN)
      r[6 / 2] |= P32XS_FULL;
    // tested: len register decrements and 68S clears
    // even if SH2s/DMAC aren't active..
    r[0x10 / 2]--;
    if (r[0x10 / 2] == 0)
      r[6 / 2] &= ~P32XS_68S;

    if ((Pico32x.dmac0_fifo_ptr & 3) == 0) {
      FUNC3(FUNC0());
      FUNC2();
    }
  }
  else
    FUNC1(EL_32X|EL_ANOMALY, "DREQ FIFO overflow!");
}