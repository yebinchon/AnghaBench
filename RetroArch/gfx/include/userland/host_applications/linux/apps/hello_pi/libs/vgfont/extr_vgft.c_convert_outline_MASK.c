#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FT_Vector ;

/* Variables and functions */
 scalar_t__ COORDS_COUNT_MAX ; 
 scalar_t__ SEGMENTS_COUNT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char const*,short) ; 
 scalar_t__ coords_count ; 
 scalar_t__ segments_count ; 

__attribute__((used)) static void FUNC2(const FT_Vector *points, const char *tags, const short *contours, short contours_count, short points_count)
{
   segments_count = 0;
   coords_count = 0;

   short last_contour = 0;
   for (; contours_count != 0; ++contours, --contours_count) {
      short contour = *contours + 1;
      FUNC1(points + last_contour, tags + last_contour, contour - last_contour);
      last_contour = contour;
   }
   FUNC0(last_contour == points_count);

   FUNC0(segments_count <= SEGMENTS_COUNT_MAX); /* oops... we overwrote some memory */
   FUNC0(coords_count <= COORDS_COUNT_MAX);
}