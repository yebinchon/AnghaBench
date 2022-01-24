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
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  int /*<<< orphan*/ * png_structp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  int /*<<< orphan*/ * png_infop ;
typedef  int /*<<< orphan*/ * png_bytep ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_HANDLE_CHUNK_ALWAYS ; 
 scalar_t__ PNG_INTERLACE_ADAM7 ; 
 int PNG_INTERLACE_ADAM7_PASSES ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(FILE *fp)
{
   png_structp png_ptr = FUNC4(PNG_LIBPNG_VER_STRING,0,0,0);
   png_infop info_ptr = NULL;
   png_bytep row = NULL, display = NULL;

   if (png_ptr == NULL)
      return 0;

   if (FUNC18(FUNC11(png_ptr)))
   {
      FUNC5(&png_ptr, &info_ptr, NULL);
      if (row != NULL) FUNC1(row);
      if (display != NULL) FUNC1(display);
      return 0;
   }

   FUNC10(png_ptr, fp);

   info_ptr = FUNC3(png_ptr);
   if (info_ptr == NULL)
      FUNC6(png_ptr, "OOM allocating info structure");

   FUNC16(png_ptr, PNG_HANDLE_CHUNK_ALWAYS, NULL, 0);

   FUNC13(png_ptr, info_ptr);

   {
      png_size_t rowbytes = FUNC9(png_ptr, info_ptr);

      /* Failure to initialize these is harmless */
      row = FUNC2(rowbytes);
      display = FUNC2(rowbytes);

      if (row == NULL || display == NULL)
         FUNC6(png_ptr, "OOM allocating row buffers");

      {
         png_uint_32 height = FUNC7(png_ptr, info_ptr);
#        ifdef PNG_READ_INTERLACING_SUPPORTED
            int passes = png_set_interlace_handling(png_ptr);
#        else /* !READ_INTERLACING */
            int passes = FUNC8(png_ptr, info_ptr) ==
               PNG_INTERLACE_ADAM7 ? PNG_INTERLACE_ADAM7_PASSES : 1;
#        endif /* !READ_INTERLACING */
         int pass;

         FUNC17(png_ptr);

         for (pass = 0; pass < passes; ++pass)
         {
            png_uint_32 y = height;

#           ifndef PNG_READ_INTERLACING_SUPPORTED
               if (passes == PNG_INTERLACE_ADAM7_PASSES)
                  y = FUNC0(y, pass);
#           endif /* READ_INTERLACING */

            /* NOTE: this trashes the row each time; interlace handling won't
             * work, but this avoids memory thrashing for speed testing.
             */
            while (y-- > 0)
               FUNC14(png_ptr, row, display);
         }
      }
   }

   /* Make sure to read to the end of the file: */
   FUNC12(png_ptr, info_ptr);
   FUNC5(&png_ptr, &info_ptr, NULL);
   FUNC1(row);
   FUNC1(display);
   return 1;
}