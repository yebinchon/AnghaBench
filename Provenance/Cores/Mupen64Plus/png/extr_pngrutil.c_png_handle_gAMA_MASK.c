#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_1__* png_structrp ;
typedef  int /*<<< orphan*/  png_inforp ;
typedef  int /*<<< orphan*/  png_fixed_point ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_9__ {int mode; int /*<<< orphan*/  colorspace; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void /* PRIVATE */
FUNC8(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_fixed_point igamma;
   png_byte buf[4];

   FUNC6(1, "in png_handle_gAMA");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & (PNG_HAVE_IDAT|PNG_HAVE_PLTE)) != 0)
   {
      FUNC4(png_ptr, length);
      FUNC0(png_ptr, "out of place");
      return;
   }

   if (length != 4)
   {
      FUNC4(png_ptr, length);
      FUNC0(png_ptr, "invalid");
      return;
   }

   FUNC5(png_ptr, buf, 4);

   if (FUNC4(png_ptr, 0) != 0)
      return;

   igamma = FUNC7(NULL, buf);

   FUNC2(png_ptr, &png_ptr->colorspace, igamma);
   FUNC3(png_ptr, info_ptr);
}