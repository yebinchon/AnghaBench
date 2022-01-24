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
typedef  float VGfloat ;
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ FT_Vector ;

/* Variables and functions */
 int /*<<< orphan*/  VG_CLOSE_PATH ; 
 int /*<<< orphan*/  VG_CUBIC_TO ; 
 int /*<<< orphan*/  VG_LINE_TO ; 
 int /*<<< orphan*/  VG_MOVE_TO ; 
 int /*<<< orphan*/  VG_QUAD_TO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 float* coords ; 
 int coords_count ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * segments ; 
 int /*<<< orphan*/  segments_count ; 

__attribute__((used)) static void FUNC2(const FT_Vector *points, const char *tags, short points_count)
{
   int first_coords = coords_count;

   int first = 1;
   char last_tag = 0;
   int c = 0;

   for (; points_count != 0; ++points, ++tags, --points_count) {
      ++c;

      char tag = *tags;
      if (first) {
         FUNC0(tag & 0x1);
         FUNC0(c==1); c=0;
         segments[segments_count++] = VG_MOVE_TO;
         first = 0;
      } else if (tag & 0x1) {
         /* on curve */

         if (last_tag & 0x1) {
            /* last point was also on -- line */
            FUNC0(c==1); c=0;
            segments[segments_count++] = VG_LINE_TO;
         } else {
            /* last point was off -- quad or cubic */
            if (last_tag & 0x2) {
               /* cubic */
               FUNC0(c==3); c=0;
               segments[segments_count++] = VG_CUBIC_TO;
            } else {
               /* quad */
               FUNC0(c==2); c=0;
               segments[segments_count++] = VG_QUAD_TO;
            }
         }
      } else {
         /* off curve */

         if (tag & 0x2) {
            /* cubic */

            FUNC0((last_tag & 0x1) || (last_tag & 0x2)); /* last either on or off and cubic */
         } else {
            /* quad */

            if (!(last_tag & 0x1)) {
               /* last was also off curve */

               FUNC0(!(last_tag & 0x2)); /* must be quad */

               /* add on point half-way between */
               FUNC0(c==2); c=1;
               segments[segments_count++] = VG_QUAD_TO;
               VGfloat x = (coords[coords_count - 2] + FUNC1(points->x)) * 0.5f;
               VGfloat y = (coords[coords_count - 1] + FUNC1(points->y)) * 0.5f;
               coords[coords_count++] = x;
               coords[coords_count++] = y;
            }
         }
      }
      last_tag = tag;

      coords[coords_count++] = FUNC1(points->x);
      coords[coords_count++] = FUNC1(points->y);
   }

   if (last_tag & 0x1) {
      /* last point was also on -- line (implicit with close path) */
      FUNC0(c==0);
   } else {
      ++c;

      /* last point was off -- quad or cubic */
      if (last_tag & 0x2) {
         /* cubic */
         FUNC0(c==3); c=0;
         segments[segments_count++] = VG_CUBIC_TO;
      } else {
         /* quad */
         FUNC0(c==2); c=0;
         segments[segments_count++] = VG_QUAD_TO;
      }

      coords[coords_count++] = coords[first_coords + 0];
      coords[coords_count++] = coords[first_coords + 1];
   }

   segments[segments_count++] = VG_CLOSE_PATH;
}