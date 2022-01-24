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
struct arg {int x1; int x2; int y1; int y2; } ;

/* Variables and functions */
 int INSIDE ; 
 int OUTSIDE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (double,double,double,double,double,double) ; 

__attribute__((used)) static int
FUNC2(const struct arg *arg, double x, double y, double w)
   /* Check for a point being inside the boundaries implied by the given arg
    * and assuming a width 2*w each side of the boundaries.  This returns the
    * 'check' INSIDE/OUTSIDE/0 result but note the semantics:
    *
    *          +--------------+
    *          |              |   OUTSIDE
    *          |   INSIDE     |
    *          |              |
    *          +--------------+
    *
    * And '0' means within the line boundaries.
    */
{
   double cx = (arg->x1+arg->x2)/2;
   double wx = FUNC0(arg->x1-arg->x2)/2;
   double cy = (arg->y1+arg->y2)/2;
   double wy = FUNC0(arg->y1-arg->y2)/2;

   if (FUNC1(x, y, cx-wx-w, cy-wy-w, cx+wx+w, cy+wy+w))
   {
      /* Inside, but maybe too far; check for the redundant case where
       * the lines overlap:
       */
      wx -= w;
      wy -= w;
      if (wx > 0 && wy > 0 && FUNC1(x, y, cx-wx, cy-wy, cx+wx, cy+wy))
         return INSIDE; /* between (inside) the boundary lines. */

      return 0; /* inside the lines themselves. */
   }

   return OUTSIDE; /* outside the boundary lines. */
}