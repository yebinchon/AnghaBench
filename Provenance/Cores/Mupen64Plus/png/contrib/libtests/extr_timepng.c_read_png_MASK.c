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
typedef  int /*<<< orphan*/ * png_structp ;
typedef  int /*<<< orphan*/  png_int_32 ;
typedef  int /*<<< orphan*/ * png_infop ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  no_warnings ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(FILE *fp, png_int_32 transforms, FILE *write_file)
{
   png_structp png_ptr = FUNC1(PNG_LIBPNG_VER_STRING,0,0,
         no_warnings);
   png_infop info_ptr = NULL;

   if (png_ptr == NULL)
      return 0;

   if (FUNC9(FUNC5(png_ptr)))
   {
      FUNC2(&png_ptr, &info_ptr, NULL);
      return 0;
   }

#  ifdef PNG_BENIGN_ERRORS_SUPPORTED
      png_set_benign_errors(png_ptr, 1/*allowed*/);
#  endif
   FUNC4(png_ptr, fp);

   info_ptr = FUNC0(png_ptr);

   if (info_ptr == NULL)
      FUNC3(png_ptr, "OOM allocating info structure");

   if (transforms < 0)
      FUNC8(png_ptr, info_ptr, write_file, fp);

   else
      FUNC6(png_ptr, info_ptr, transforms, NULL/*params*/);

   FUNC2(&png_ptr, &info_ptr, NULL);
   return 1;
}