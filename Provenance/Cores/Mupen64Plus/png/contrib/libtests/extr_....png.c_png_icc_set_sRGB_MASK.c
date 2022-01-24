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
typedef  int /*<<< orphan*/  uLong ;
typedef  int /*<<< orphan*/  png_const_structrp ;
typedef  scalar_t__ png_const_bytep ;
typedef  int /*<<< orphan*/  png_colorspacerp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void /* PRIVATE */
FUNC3(png_const_structrp png_ptr,
    png_colorspacerp colorspace, png_const_bytep profile, uLong adler)
{
   /* Is this profile one of the known ICC sRGB profiles?  If it is, just set
    * the sRGB information.
    */
   if (FUNC1(png_ptr, profile, adler) != 0)
      (void)FUNC0(png_ptr, colorspace,
         (int)/*already checked*/FUNC2(profile+64));
}