#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float sy; float ey; float direction; } ;
typedef  TYPE_1__ stbtt__active_edge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(float *scanline, int x, stbtt__active_edge *e,
      float x0, float y0, float x1, float y1)
{
   if (y0 == y1) return;
   FUNC0(y0 < y1);
   FUNC0(e->sy <= e->ey);
   if (y0 > e->ey) return;
   if (y1 < e->sy) return;
   if (y0 < e->sy) {
      x0 += (x1-x0) * (e->sy - y0) / (y1-y0);
      y0 = e->sy;
   }
   if (y1 > e->ey) {
      x1 += (x1-x0) * (e->ey - y1) / (y1-y0);
      y1 = e->ey;
   }

#if 0
   if (x0 == x)
      assert(x1 <= x+1);
   else if (x0 == x+1)
      assert(x1 >= x);
   else if (x0 <= x)
      assert(x1 <= x);
   else if (x0 >= x+1)
      assert(x1 >= x+1);
   else
      assert(x1 >= x && x1 <= x+1);
#endif

   if (x0 <= x && x1 <= x)
      scanline[x] += e->direction * (y1-y0);
   else if (x0 >= x+1 && x1 >= x+1)
      ;
   else {
#if 0
      assert(x0 >= x && x0 <= x+1 && x1 >= x && x1 <= x+1);
#endif
      scanline[x] += e->direction * (y1-y0) * (1-((x0-x)+(x1-x))/2); /* coverage = 1 - average x position */
   }
}