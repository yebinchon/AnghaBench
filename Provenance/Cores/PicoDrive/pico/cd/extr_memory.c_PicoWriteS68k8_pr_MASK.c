#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {size_t bank; } ;
struct TYPE_4__ {int** pcm_ram_b; TYPE_1__ pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_CDREGS ; 
 TYPE_2__* Pico_mcd ; 
 int /*<<< orphan*/  SekPcS68k ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(u32 a, u32 d)
{
  // regs
  if ((a & 0xfe00) == 0x8000) {
    a &= 0x1ff;
    FUNC0(EL_CDREGS, "s68k_regs w8: [%02x] %02x @%06x", a, d, SekPcS68k);
    if (0x59 <= a && a < 0x68) // word regs
      FUNC2(a & ~1, (d << 8) | d);
    else
      FUNC3(a, d);
    return;
  }

  // PCM
  if ((a & 0x8000) == 0x0000) {
    a &= 0x7fff;
    if (a >= 0x2000)
      Pico_mcd->pcm_ram_b[Pico_mcd->pcm.bank][(a>>1)&0xfff] = d;
    else if (a < 0x12)
      FUNC1(a>>1, d);
    return;
  }

  FUNC4(a, d);
}