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
struct TYPE_3__ {int w; int h; int x; } ;
struct TYPE_4__ {TYPE_1__ viewport; } ;

/* Variables and functions */
 scalar_t__ SYSTEM_MD ; 
 scalar_t__ SYSTEM_SG ; 
 scalar_t__ bg_list_index ; 
 TYPE_2__ bitmap ; 
 int /*<<< orphan*/ ** linebuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* reg ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  spr_ovr ; 
 int /*<<< orphan*/  status ; 
 scalar_t__ system_hw ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(int line)
{
  int width = bitmap.viewport.w;
  int x_offset;

  /* Check display status */
  if (reg[1] & 0x40)
  {
    /* Update pattern cache */
    if (bg_list_index)
    {
      FUNC5(bg_list_index);
      bg_list_index = 0;
    }

    /* Render BG layer(s) */
    FUNC3(line, width);

    /* Render sprite layer */
    FUNC4(width);

    /* Left-most column blanking */
    if (reg[0] & 0x20)
    {
      if (system_hw > SYSTEM_SG)
      {
        FUNC0(&linebuf[0][0x20], 0x40, 8);
      }
    }

    /* Parse sprites for next line */
    if (line < (bitmap.viewport.h - 1))
    {
      FUNC1(line);
    }
  }
  else
  {
    /* Master System & Game Gear VDP specific */
    if (system_hw < SYSTEM_MD)
    {
      /* Update SOVR flag */
      status |= spr_ovr;
      spr_ovr = 0;

      /* Sprites are still parsed when display is disabled */
      FUNC1(line);
    }

    /* Blanked line */
    FUNC0(&linebuf[0][0x20], 0x40, width);
  }

  /* Horizontal borders */
  x_offset = bitmap.viewport.x;
  if (x_offset > 0)
  {
    FUNC0(&linebuf[0][0x20 - x_offset], 0x40, x_offset);
    FUNC0(&linebuf[0][0x20 + width], 0x40, x_offset);
  }

  /* Pixel color remapping */
  FUNC2(line);
}