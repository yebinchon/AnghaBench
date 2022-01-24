#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_15__ {scalar_t__ is_slave; } ;
struct TYPE_14__ {int* w; } ;
struct TYPE_13__ {int* w; } ;
struct TYPE_12__ {int* pal; TYPE_2__ sh2_rom_s; TYPE_1__ sh2_rom_m; } ;
typedef  TYPE_3__ SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 int EL_LOGMASK ; 
 int EL_PWM ; 
 TYPE_11__* Pico32xMem ; 
 int /*<<< orphan*/  SH2_STATE_VPOLL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,TYPE_3__*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,TYPE_3__*) ; 

__attribute__((used)) static u32 FUNC7(u32 a, SH2 *sh2)
{
  u32 d = 0;

  FUNC3(sh2, 1*2);

  if ((a & 0x3ffc0) == 0x4000) {
    d = FUNC1(a, sh2);
    if (!(EL_LOGMASK & EL_PWM) && (a & 0x30) == 0x30) // hide PWM
      return d;
    goto out;
  }

  if ((a & 0x3fff0) == 0x4100) {
    d = FUNC2(a);
    FUNC5(sh2, a, SH2_STATE_VPOLL, 7);
    goto out;
  }

  if (!sh2->is_slave && a < sizeof(Pico32xMem->sh2_rom_m))
    return Pico32xMem->sh2_rom_m.w[a / 2];
  if (sh2->is_slave  && a < sizeof(Pico32xMem->sh2_rom_s))
    return Pico32xMem->sh2_rom_s.w[a / 2];

  if ((a & 0x3fe00) == 0x4200) {
    d = Pico32xMem->pal[(a & 0x1ff) / 2];
    goto out;
  }

  return FUNC6(a, sh2);

out:
  FUNC0(sh2, EL_32X, "r16 [%08x]     %04x @%06x",
    a, d, FUNC4(sh2));
  return d;
}