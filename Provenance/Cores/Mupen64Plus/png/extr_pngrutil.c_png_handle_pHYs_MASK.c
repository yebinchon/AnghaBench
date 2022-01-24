#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_1__* png_structrp ;
typedef  TYPE_2__* png_inforp ;
typedef  int png_byte ;
struct TYPE_12__ {int valid; } ;
struct TYPE_11__ {int mode; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_INFO_pHYs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int,int,int) ; 

void /* PRIVATE */
FUNC7(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_byte buf[9];
   png_uint_32 res_x, res_y;
   int unit_type;

   FUNC4(1, "in png_handle_pHYs");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "out of place");
      return;
   }

   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_pHYs) != 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "duplicate");
      return;
   }

   if (length != 9)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "invalid");
      return;
   }

   FUNC3(png_ptr, buf, 9);

   if (FUNC2(png_ptr, 0) != 0)
      return;

   res_x = FUNC5(buf);
   res_y = FUNC5(buf + 4);
   unit_type = buf[8];
   FUNC6(png_ptr, info_ptr, res_x, res_y, unit_type);
}