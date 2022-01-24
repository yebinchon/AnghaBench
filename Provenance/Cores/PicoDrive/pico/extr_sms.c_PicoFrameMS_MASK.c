#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct PicoVideo {int* reg; int v_counter; int pending_ints; } ;
struct TYPE_5__ {int pal; int scanline; } ;
struct TYPE_4__ {int nmi_state; } ;
struct TYPE_6__ {TYPE_2__ m; TYPE_1__ ms; struct PicoVideo video; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_INTS ; 
 TYPE_3__ Pico ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* PicoPad ; 
 int PicoSkipFrame ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ PsndOut ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 

void FUNC7(void)
{
  struct PicoVideo *pv = &Pico.video;
  int is_pal = Pico.m.pal;
  int lines = is_pal ? 313 : 262;
  int cycles_line = is_pal ? 58020 : 58293; /* (226.6 : 227.7) * 256 */
  int cycles_done = 0, cycles_aim = 0;
  int skip = PicoSkipFrame;
  int lines_vis = 192;
  int hint; // Hint counter
  int nmi;
  int y;

  nmi = (PicoPad[0] >> 7) & 1;
  if (!Pico.ms.nmi_state && nmi)
    FUNC5();
  Pico.ms.nmi_state = nmi;

  FUNC0();
  hint = pv->reg[0x0a];

  for (y = 0; y < lines; y++)
  {
    pv->v_counter = Pico.m.scanline = y;
    if (y > 218)
      pv->v_counter = y - 6;

    if (y < lines_vis && !skip)
      FUNC1(y);

    if (y <= lines_vis)
    {
      if (--hint < 0)
      {
        hint = pv->reg[0x0a];
        pv->pending_ints |= 2;
        if (pv->reg[0] & 0x10) {
          FUNC3(EL_INTS, "hint");
          FUNC4();
        }
      }
    }
    else if (y == lines_vis + 1) {
      pv->pending_ints |= 1;
      if (pv->reg[1] & 0x20) {
        FUNC3(EL_INTS, "vint");
        FUNC4();
      }
    }

    cycles_aim += cycles_line;
    cycles_done += FUNC6((cycles_aim - cycles_done) >> 8) << 8;
  }

  if (PsndOut)
    FUNC2();
}