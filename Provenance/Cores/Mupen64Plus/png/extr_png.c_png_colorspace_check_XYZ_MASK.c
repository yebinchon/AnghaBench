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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(png_xy *xy, png_XYZ *XYZ)
{
   int result;
   png_XYZ XYZtemp;

   result = FUNC0(XYZ);
   if (result != 0)
      return result;

   result = FUNC2(xy, XYZ);
   if (result != 0)
      return result;

   XYZtemp = *XYZ;
   return FUNC1(&XYZtemp, xy);
}