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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_4__ {int /*<<< orphan*/ * mapPtr; int /*<<< orphan*/ * tracePtr; scalar_t__ bufferStart; scalar_t__ bufferOffset; scalar_t__ mapShift; scalar_t__ stampShift; scalar_t__ dotMask; scalar_t__ cyclesPerLine; scalar_t__ cycles; } ;
struct TYPE_3__ {scalar_t__ word_ram_2M; } ;

/* Variables and functions */
 TYPE_2__ gfx ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 TYPE_1__ scd ; 

int FUNC1(uint8 *state)
{
  uint32 tmp32;
  int bufferptr = 0;

  FUNC0(&gfx.cycles, sizeof(gfx.cycles));
  FUNC0(&gfx.cyclesPerLine, sizeof(gfx.cyclesPerLine));
  FUNC0(&gfx.dotMask, sizeof(gfx.dotMask));
  FUNC0(&gfx.stampShift, sizeof(gfx.stampShift));
  FUNC0(&gfx.mapShift, sizeof(gfx.mapShift));
  FUNC0(&gfx.bufferOffset, sizeof(gfx.bufferOffset));
  FUNC0(&gfx.bufferStart, sizeof(gfx.bufferStart));

  FUNC0(&tmp32, 4);
  gfx.tracePtr = (uint16 *)(scd.word_ram_2M + tmp32);

  FUNC0(&tmp32, 4);
  gfx.mapPtr = (uint16 *)(scd.word_ram_2M + tmp32);

  return bufferptr;
}