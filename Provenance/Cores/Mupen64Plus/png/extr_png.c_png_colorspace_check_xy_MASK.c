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
typedef  int /*<<< orphan*/  png_xy ;
typedef  int /*<<< orphan*/  png_XYZ ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(png_XYZ *XYZ, const png_xy *xy)
{
   int result;
   png_xy xy_test;

   /* As a side-effect this routine also returns the XYZ endpoints. */
   result = FUNC0(XYZ, xy);
   if (result != 0)
      return result;

   result = FUNC2(&xy_test, XYZ);
   if (result != 0)
      return result;

   if (FUNC1(xy, &xy_test,
       5/*actually, the math is pretty accurate*/) != 0)
      return 0;

   /* Too much slip */
   return 1;
}