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
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static u32 FUNC4(u32 a)
{
  u32 d = 0;

  // regs
  if ((a & 0xfe00) == 0x8000) {
    a &= 0x1fe;
    d = FUNC2(a);

    FUNC0(EL_CDREGS, "s68k_regs r16: [%02x] %04x @%06x",
      a, d, SekPcS68k);
    return d;
  }

  // PCM
  if ((a & 0x8000) == 0x0000) {
    a &= 0x7fff;
    if (a >= 0x2000)
      d = Pico_mcd->pcm_ram_b[Pico_mcd->pcm.bank][(a >> 1) & 0xfff];
    else if (a >= 0x20)
      d = FUNC1(a >> 1);

    return d;
  }

  return FUNC3(a);
}