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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/ * uint32 ;
struct TYPE_4__ {int word_ram2M; } ;
struct TYPE_3__ {int /*<<< orphan*/ * y_step; scalar_t__ mapPtr; scalar_t__ tracePtr; int /*<<< orphan*/ * bufferStart; int /*<<< orphan*/ * bufferOffset; int /*<<< orphan*/ * mapShift; int /*<<< orphan*/ * stampShift; int /*<<< orphan*/ * dotMask; } ;

/* Variables and functions */
 TYPE_2__* Pico_mcd ; 
 TYPE_1__ gfx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 

int FUNC1(uint8 *state)
{
  uint32 tmp32;
  int bufferptr = 0;

  //save_param(&gfx.cycles, sizeof(gfx.cycles));
  //save_param(&gfx.cyclesPerLine, sizeof(gfx.cyclesPerLine));
  FUNC0(&gfx.dotMask, sizeof(gfx.dotMask));
  FUNC0(&gfx.stampShift, sizeof(gfx.stampShift));
  FUNC0(&gfx.mapShift, sizeof(gfx.mapShift));
  FUNC0(&gfx.bufferOffset, sizeof(gfx.bufferOffset));
  FUNC0(&gfx.bufferStart, sizeof(gfx.bufferStart));

  tmp32 = (uint8 *)(gfx.tracePtr) - Pico_mcd->word_ram2M;
  FUNC0(&tmp32, 4);

  tmp32 = (uint8 *)(gfx.mapPtr) - Pico_mcd->word_ram2M;
  FUNC0(&tmp32, 4);

  FUNC0(&gfx.y_step, sizeof(gfx.y_step));

  return bufferptr;
}