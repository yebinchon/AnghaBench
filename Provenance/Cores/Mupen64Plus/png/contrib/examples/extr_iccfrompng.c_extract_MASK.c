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
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/ * png_structp ;
typedef  int /*<<< orphan*/ * png_infop ;
typedef  int /*<<< orphan*/  png_charp ;
typedef  int /*<<< orphan*/ * png_bytep ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PNG_INFO_iCCP ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * no_profile ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static png_bytep
FUNC12(FILE *fp, png_uint_32 *proflen)
{
   png_structp png_ptr = FUNC4(PNG_LIBPNG_VER_STRING,0,0,0);
   png_infop info_ptr = NULL;
   png_bytep result = NULL;

   /* Initialize for error or no profile: */
   *proflen = 0;

   if (png_ptr == NULL)
   {
      FUNC0(stderr, "iccfrompng: version library mismatch?\n");
      return 0;
   }

   if (FUNC11(FUNC9(png_ptr)))
   {
      FUNC5(&png_ptr, &info_ptr, NULL);
      return 0;
   }

   FUNC8(png_ptr, fp);

   info_ptr = FUNC3(png_ptr);
   if (info_ptr == NULL)
      FUNC6(png_ptr, "OOM allocating info structure");

   FUNC10(png_ptr, info_ptr);

   {
      png_charp name;
      int compression_type;
      png_bytep profile;

      if (FUNC7(png_ptr, info_ptr, &name, &compression_type, &profile,
         proflen) & PNG_INFO_iCCP)
      {
         result = FUNC1(*proflen);
         if (result != NULL)
            FUNC2(result, profile, *proflen);

         else
            FUNC6(png_ptr, "OOM allocating profile buffer");
      }

      else
	result = no_profile;
   }

   FUNC5(&png_ptr, &info_ptr, NULL);
   return result;
}