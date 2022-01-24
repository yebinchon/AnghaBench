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
typedef  scalar_t__ pixel_t ;
struct TYPE_2__ {int vdp2width; int /*<<< orphan*/  trans; int /*<<< orphan*/  inited; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 
 TYPE_1__ tt_context ; 

void FUNC4(pixel_t * dispbuffer, int start_line, int end_line)
{
   int x, y, layer_y;
   u32 dot;
   int line_increment, interlace_line;

   if (!tt_context.inited || (!tt_context.trans))
   {
      return;
   }

   FUNC2(&interlace_line, &line_increment);

   FUNC3(start_line, &layer_y);

   for (y = start_line + interlace_line; y < end_line; y += line_increment)
   {
      for (x = 0; x < tt_context.vdp2width; x++)
      {
         int i = (y * tt_context.vdp2width) + x;
         int layer_pos = (layer_y * tt_context.vdp2width) + x;

         dispbuffer[i] = 0;

         dot = FUNC0(layer_pos, y);

         if (dot)
         {
            dispbuffer[i] = FUNC1(dot);
         }
      }

      layer_y++;
   }
}