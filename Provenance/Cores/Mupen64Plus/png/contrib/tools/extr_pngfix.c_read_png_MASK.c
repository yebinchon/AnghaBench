#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* global; int /*<<< orphan*/  jmpbuf; int /*<<< orphan*/  status_code; } ;
struct control {TYPE_2__ file; } ;
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  int /*<<< orphan*/ * png_structp ;
typedef  int /*<<< orphan*/ * png_infop ;
struct TYPE_3__ {scalar_t__ verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERNAL_ERROR ; 
 int LIBPNG_ERROR_CODE ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  error_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct control*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_callback ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  warning_handler ; 

__attribute__((used)) static int
FUNC17(struct control *control)
   /* Read a PNG, return 0 on success else an error (status) code; a bit mask as
    * defined for file::status_code as above.
    */
{
   png_structp png_ptr;
   png_infop info_ptr = NULL;
   volatile int rc;

   png_ptr = FUNC3(PNG_LIBPNG_VER_STRING, control,
      error_handler, warning_handler);

   if (png_ptr == NULL)
   {
      /* This is not really expected. */
      FUNC1(&control->file, LIBPNG_ERROR_CODE, "OOM allocating png_struct");
      control->file.status_code |= INTERNAL_ERROR;
      return LIBPNG_ERROR_CODE;
   }

   rc = FUNC16(control->file.jmpbuf);
   if (rc == 0)
   {
#     ifdef PNG_SET_USER_LIMITS_SUPPORTED
         /* Remove any limits on the size of PNG files that can be read,
          * without this we may reject files based on built-in safety
          * limits.
          */
         png_set_user_limits(png_ptr, 0x7fffffff, 0x7fffffff);
         png_set_chunk_cache_max(png_ptr, 0);
         png_set_chunk_malloc_max(png_ptr, 0);
#     endif

      FUNC13(png_ptr, control, read_callback);

      info_ptr = FUNC2(png_ptr);
      if (info_ptr == NULL)
         FUNC5(png_ptr, "OOM allocating info structure");

      if (control->file.global->verbose)
         FUNC0(stderr, " INFO\n");

      FUNC8(png_ptr, info_ptr);

      {
        png_uint_32 height = FUNC6(png_ptr, info_ptr);
        int passes = FUNC12(png_ptr);
        int pass;

        FUNC15(png_ptr);

        for (pass = 0; pass < passes; ++pass)
        {
           png_uint_32 y = height;

           /* NOTE: this skips asking libpng to return either version of
            * the image row, but libpng still reads the rows.
            */
           while (y-- > 0)
              FUNC9(png_ptr, NULL, NULL);
        }
      }

      if (control->file.global->verbose)
         FUNC0(stderr, " END\n");

      /* Make sure to read to the end of the file: */
      FUNC7(png_ptr, info_ptr);
   }

   FUNC4(&png_ptr, &info_ptr, NULL);
   return rc;
}