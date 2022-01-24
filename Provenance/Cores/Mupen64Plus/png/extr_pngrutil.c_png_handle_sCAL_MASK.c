#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_1__* png_structrp ;
typedef  int png_size_t ;
typedef  TYPE_2__* png_inforp ;
typedef  int /*<<< orphan*/  png_const_charp ;
typedef  int png_charp ;
typedef  int* png_bytep ;
struct TYPE_13__ {int valid; } ;
struct TYPE_12__ {int mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_INFO_sCAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int* FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int,int,int) ; 

void /* PRIVATE */
FUNC10(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_bytep buffer;
   png_size_t i;
   int state;

   FUNC6(1, "in png_handle_sCAL");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC3(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
   {
      FUNC4(png_ptr, length);
      FUNC2(png_ptr, "out of place");
      return;
   }

   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_sCAL) != 0)
   {
      FUNC4(png_ptr, length);
      FUNC2(png_ptr, "duplicate");
      return;
   }

   /* Need unit type, width, \0, height: minimum 4 bytes */
   else if (length < 4)
   {
      FUNC4(png_ptr, length);
      FUNC2(png_ptr, "invalid");
      return;
   }

   FUNC7(2, "Allocating and reading sCAL chunk data (%u bytes)",
       length + 1);

   buffer = FUNC8(png_ptr, length+1, 2/*silent*/);

   if (buffer == NULL)
   {
      FUNC2(png_ptr, "out of memory");
      FUNC4(png_ptr, length);
      return;
   }

   FUNC5(png_ptr, buffer, length);
   buffer[length] = 0; /* Null terminate the last string */

   if (FUNC4(png_ptr, 0) != 0)
      return;

   /* Validate the unit. */
   if (buffer[0] != 1 && buffer[0] != 2)
   {
      FUNC2(png_ptr, "invalid unit");
      return;
   }

   /* Validate the ASCII numbers, need two ASCII numbers separated by
    * a '\0' and they need to fit exactly in the chunk data.
    */
   i = 1;
   state = 0;

   if (FUNC1((png_const_charp)buffer, length, &state, &i) == 0 ||
       i >= length || buffer[i++] != 0)
      FUNC2(png_ptr, "bad width format");

   else if (FUNC0(state) == 0)
      FUNC2(png_ptr, "non-positive width");

   else
   {
      png_size_t heighti = i;

      state = 0;
      if (FUNC1((png_const_charp)buffer, length,
          &state, &i) == 0 || i != length)
         FUNC2(png_ptr, "bad height format");

      else if (FUNC0(state) == 0)
         FUNC2(png_ptr, "non-positive height");

      else
         /* This is the (only) success case. */
         FUNC9(png_ptr, info_ptr, buffer[0],
             (png_charp)buffer+1, (png_charp)buffer+heighti);
   }
}