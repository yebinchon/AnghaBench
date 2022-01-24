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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ PNG_UINT_31_MAX ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__,int,scalar_t__,...) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (scalar_t__,int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (scalar_t__,int) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (scalar_t__,int) ; 
 scalar_t__ FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC22(void)
{
   /* The macros to validate, first those that depend only on pass:
    *
    * PNG_PASS_START_ROW(pass)
    * PNG_PASS_START_COL(pass)
    * PNG_PASS_ROW_SHIFT(pass)
    * PNG_PASS_COL_SHIFT(pass)
    */
   int pass;

   for (pass=0; pass<7; ++pass)
   {
      png_uint_32 m, f, v;

      m = FUNC7(pass);
      f = FUNC19(pass);
      if (m != f)
      {
         FUNC11(stderr, "PNG_PASS_START_ROW(%ld) = %u != %lx\n", pass, m, f);
         FUNC10(99);
      }

      m = FUNC6(pass);
      f = FUNC18(pass);
      if (m != f)
      {
         FUNC11(stderr, "PNG_PASS_START_COL(%ld) = %u != %lx\n", pass, m, f);
         FUNC10(99);
      }

      m = FUNC5(pass);
      f = FUNC16(pass);
      if (m != f)
      {
         FUNC11(stderr, "PNG_PASS_ROW_SHIFT(%ld) = %u != %lx\n", pass, m, f);
         FUNC10(99);
      }

      m = FUNC3(pass);
      f = FUNC14(pass);
      if (m != f)
      {
         FUNC11(stderr, "PNG_PASS_COL_SHIFT(%ld) = %u != %lx\n", pass, m, f);
         FUNC10(99);
      }

      /* Macros that depend on the image or sub-image height too:
       *
       * PNG_PASS_ROWS(height, pass)
       * PNG_PASS_COLS(width, pass)
       * PNG_ROW_FROM_PASS_ROW(yIn, pass)
       * PNG_COL_FROM_PASS_COL(xIn, pass)
       * PNG_ROW_IN_INTERLACE_PASS(y, pass)
       * PNG_COL_IN_INTERLACE_PASS(x, pass)
       */
      for (v=0;;)
      {
         /* The first two tests overflow if the pass row or column is outside
          * the possible range for a 32-bit result.  In fact the values should
          * never be outside the range for a 31-bit result, but checking for 32
          * bits here ensures that if an app uses a bogus pass row or column
          * (just so long as it fits in a 32 bit integer) it won't get a
          * possibly dangerous overflow.
          */
         /* First the base 0 stuff: */
         if (v < FUNC17(0xFFFFFFFFU, pass))
         {
            m = FUNC8(v, pass);
            f = FUNC20(v, pass);
            if (m != f)
            {
               FUNC11(stderr, "PNG_ROW_FROM_PASS_ROW(%ld, %d) = %ld != %lx\n",
                  v, pass, m, f);
               FUNC10(99);
            }
         }

         if (v < FUNC15(0xFFFFFFFFU, pass))
         {
            m = FUNC0(v, pass);
            f = FUNC12(v, pass);
            if (m != f)
            {
               FUNC11(stderr, "PNG_COL_FROM_PASS_COL(%ld, %d) = %ld != %lx\n",
                  v, pass, m, f);
               FUNC10(99);
            }
         }

         m = FUNC9(v, pass);
         f = FUNC21(v, pass);
         if (m != f)
         {
            FUNC11(stderr, "PNG_ROW_IN_INTERLACE_PASS(%ld, %d) = %ld != %lx\n",
               v, pass, m, f);
            FUNC10(99);
         }

         m = FUNC1(v, pass);
         f = FUNC13(v, pass);
         if (m != f)
         {
            FUNC11(stderr, "PNG_COL_IN_INTERLACE_PASS(%ld, %d) = %ld != %lx\n",
               v, pass, m, f);
            FUNC10(99);
         }

         /* Then the base 1 stuff: */
         ++v;
         m = FUNC4(v, pass);
         f = FUNC17(v, pass);
         if (m != f)
         {
            FUNC11(stderr, "PNG_PASS_ROWS(%ld, %d) = %ld != %lx\n",
               v, pass, m, f);
            FUNC10(99);
         }

         m = FUNC2(v, pass);
         f = FUNC15(v, pass);
         if (m != f)
         {
            FUNC11(stderr, "PNG_PASS_COLS(%ld, %d) = %ld != %lx\n",
               v, pass, m, f);
            FUNC10(99);
         }

         /* Move to the next v - the stepping algorithm starts skipping
          * values above 1024.
          */
         if (v > 1024)
         {
            if (v == PNG_UINT_31_MAX)
               break;

            v = (v << 1) ^ v;
            if (v >= PNG_UINT_31_MAX)
               v = PNG_UINT_31_MAX-1;
         }
      }
   }
}