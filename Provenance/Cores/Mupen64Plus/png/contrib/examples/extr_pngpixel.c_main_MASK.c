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
typedef  long png_uint_32 ;
typedef  int /*<<< orphan*/ * png_structp ;
typedef  int /*<<< orphan*/ * png_infop ;
typedef  int /*<<< orphan*/ * png_bytep ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  PNG_INTERLACE_ADAM7 129 
 int PNG_INTERLACE_ADAM7_PASSES ; 
#define  PNG_INTERLACE_NONE 128 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 scalar_t__ FUNC0 (long,int) ; 
 long FUNC1 (int) ; 
 long FUNC2 (int) ; 
 long FUNC3 (int) ; 
 long FUNC4 (int) ; 
 long FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long*,long*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC24(int argc, const char **argv)
{
   /* This program uses the default, <setjmp.h> based, libpng error handling
    * mechanism, therefore any local variable that exists before the call to
    * setjmp and is changed after the call to setjmp returns successfully must
    * be declared with 'volatile' to ensure that their values don't get
    * destroyed by longjmp:
    */
   volatile int result = 1/*fail*/;

   if (argc == 4)
   {
      long x = FUNC5(argv[1]);
      long y = FUNC5(argv[2]);
      FILE *f = FUNC6(argv[3], "rb");
      volatile png_bytep row = NULL;

      if (f != NULL)
      {
         /* libpng requires a callback function for handling errors; this
          * callback must not return.  The default callback function uses a
          * stored <setjmp.h> style jmp_buf which is held in a png_struct and
          * writes error messages to stderr.  Creating the png_struct is a
          * little tricky; just copy the following code.
          */
         png_structp png_ptr = FUNC9(PNG_LIBPNG_VER_STRING,
            NULL, NULL, NULL);

         if (png_ptr != NULL)
         {
            png_infop info_ptr = FUNC8(png_ptr);

            if (info_ptr != NULL)
            {
               /* Declare stack variables to hold pointers to locally allocated
                * data.
                */

               /* Initialize the error control buffer: */
               if (FUNC23(FUNC17(png_ptr)) == 0)
               {
                  png_uint_32 width, height;
                  int bit_depth, color_type, interlace_method,
                     compression_method, filter_method;
                  png_bytep row_tmp;

                  /* Now associate the recently opened (FILE*) with the default
                   * libpng initialization functions.  Sometimes libpng is
                   * compiled without stdio support (it can be difficult to do
                   * in some environments); in that case you will have to write
                   * your own read callback to read data from the (FILE*).
                   */
                  FUNC16(png_ptr, f);

                  /* And read the first part of the PNG file - the header and
                   * all the information up to the first pixel.
                   */
                  FUNC19(png_ptr, info_ptr);

                  /* This fills in enough information to tell us the width of
                   * each row in bytes, allocate the appropriate amount of
                   * space.  In this case png_malloc is used - it will not
                   * return if memory isn't available.
                   */
                  row = FUNC18(png_ptr, FUNC15(png_ptr,
                     info_ptr));

                  /* To avoid the overhead of using a volatile auto copy row_tmp
                   * to a local here - just use row for the png_free below.
                   */
                  row_tmp = row;

                  /* All the information we need is in the header is returned by
                   * png_get_IHDR, if this fails we can now use 'png_error' to
                   * signal the error and return control to the setjmp above.
                   */
                  if (FUNC14(png_ptr, info_ptr, &width, &height,
                     &bit_depth, &color_type, &interlace_method,
                     &compression_method, &filter_method))
                  {
                     int passes, pass;

                     /* png_set_interlace_handling returns the number of
                      * passes required as well as turning on libpng's
                      * handling, but since we do it ourselves this is
                      * necessary:
                      */
                     switch (interlace_method)
                     {
                        case PNG_INTERLACE_NONE:
                           passes = 1;
                           break;

                        case PNG_INTERLACE_ADAM7:
                           passes = PNG_INTERLACE_ADAM7_PASSES;
                           break;

                        default:
                           FUNC12(png_ptr, "pngpixel: unknown interlace");
                     }

                     /* Now read the pixels, pass-by-pass, row-by-row: */
                     FUNC21(png_ptr);

                     for (pass=0; pass<passes; ++pass)
                     {
                        png_uint_32 ystart, xstart, ystep, xstep;
                        png_uint_32 py;

                        if (interlace_method == PNG_INTERLACE_ADAM7)
                        {
                           /* Sometimes the whole pass is empty because the
                            * image is too narrow or too short.  libpng
                            * expects to be called for each row that is
                            * present in the pass, so it may be necessary to
                            * skip the loop below (over py) if the image is
                            * too narrow.
                            */
                           if (FUNC0(width, pass) == 0)
                              continue;

                           /* We need the starting pixel and the offset
                            * between each pixel in this pass; use the macros
                            * in png.h:
                            */
                           xstart = FUNC3(pass);
                           ystart = FUNC4(pass);
                           xstep = FUNC1(pass);
                           ystep = FUNC2(pass);
                        }

                        else
                        {
                           ystart = xstart = 0;
                           ystep = xstep = 1;
                        }

                        /* To find the pixel, loop over 'py' for each pass
                         * reading a row and then checking to see if it
                         * contains the pixel.
                         */
                        for (py = ystart; py < height; py += ystep)
                        {
                           png_uint_32 px, ppx;

                           /* png_read_row takes two pointers.  When libpng
                            * handles the interlace the first is filled in
                            * pixel-by-pixel, and the second receives the same
                            * pixels but they are replicated across the
                            * unwritten pixels so far for each pass.  When we
                            * do the interlace, however, they just contain
                            * the pixels from the interlace pass - giving
                            * both is wasteful and pointless, so we pass a
                            * NULL pointer.
                            */
                           FUNC20(png_ptr, row_tmp, NULL);

                           /* Now find the pixel if it is in this row; there
                            * are, of course, much better ways of doing this
                            * than using a for loop:
                            */
                           if (y == py) for (px = xstart, ppx = 0;
                              px < width; px += xstep, ++ppx) if (x == px)
                           {
                              /* 'ppx' is the index of the pixel in the row
                               * buffer.
                               */
                              FUNC22(png_ptr, info_ptr, row_tmp, ppx);

                              /* Now terminate the loops early - we have
                               * found and handled the required data.
                               */
                              goto pass_loop_end;
                           } /* x loop */
                        } /* y loop */
                     } /* pass loop */

                     /* Finally free the temporary buffer: */
                  pass_loop_end:
                     row = NULL;
                     FUNC13(png_ptr, row_tmp);
                  }

                  else
                     FUNC12(png_ptr, "pngpixel: png_get_IHDR failed");

               }

               else
               {
                  /* Else libpng has raised an error.  An error message has
                   * already been output, so it is only necessary to clean up
                   * locally allocated data:
                   */
                  if (row != NULL)
                  {
                     /* The default implementation of png_free never errors out
                      * (it just crashes if something goes wrong), but the safe
                      * way of using it is still to clear 'row' before calling
                      * png_free:
                      */
                     png_bytep row_tmp = row;
                     row = NULL;
                     FUNC13(png_ptr, row_tmp);
                  }
               }

               FUNC10(png_ptr, &info_ptr);
            }

            else
               FUNC7(stderr, "pngpixel: out of memory allocating png_info\n");

            FUNC11(&png_ptr, NULL, NULL);
         }

         else
            FUNC7(stderr, "pngpixel: out of memory allocating png_struct\n");
      }

      else
         FUNC7(stderr, "pngpixel: %s: could not open file\n", argv[3]);
   }

   else
      /* Wrong number of arguments */
      FUNC7(stderr, "pngpixel: usage: pngpixel x y png-file\n");

   return result;
}