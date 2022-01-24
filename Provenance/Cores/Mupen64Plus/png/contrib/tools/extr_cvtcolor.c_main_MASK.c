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

/* Variables and functions */
 int /*<<< orphan*/  FE_TONEAREST ; 
 double FUNC0 (double,double,double) ; 
 double FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 double FUNC7 (double) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

int
FUNC10(int argc, const char **argv)
{
   const char *prog = *argv++;
   int to_linear = 0, to_gray = 0, to_color = 0;
   int channels = 0;
   double c[4];

   /* FE_TONEAREST is the IEEE754 round to nearest, preferring even, mode; i.e.
    * everything rounds to the nearest value except that '.5' rounds to the
    * nearest even value.
    */
   FUNC2(FE_TONEAREST);

   c[3] = c[2] = c[1] = c[0] = 0;

   while (--argc > 0 && **argv == '-')
   {
      const char *arg = 1+*argv++;

      if (FUNC8(arg, "sRGB") == 0)
         to_linear = 0;

      else if (FUNC8(arg, "linear") == 0)
         to_linear = 1;

      else if (FUNC8(arg, "gray") == 0)
         to_gray = 1, to_color = 0;

      else if (FUNC8(arg, "color") == 0)
         to_gray = 0, to_color = 1;

      else
         FUNC9(prog);
   }

   switch (argc)
   {
      default:
         FUNC9(prog);
         break;

      case 4:
         c[3] = FUNC1(prog, argv[3], to_linear);
         ++channels;
      case 3:
         c[2] = FUNC1(prog, argv[2], to_linear);
         ++channels;
      case 2:
         c[1] = FUNC1(prog, argv[1], to_linear);
         ++channels;
      case 1:
         c[0] = FUNC1(prog, argv[0], to_linear);
         ++channels;
         break;
      }

   if (to_linear)
   {
      int i;
      int components = channels;

      if ((components & 1) == 0)
         --components;

      for (i=0; i<components; ++i) c[i] = FUNC4(c[i] / 255);
      if (components < channels)
         c[components] = c[components] / 255;
   }

   else
   {
      int i;
      for (i=0; i<4; ++i) c[i] /= 65535;

      if ((channels & 1) == 0)
      {
         double alpha = c[channels-1];

         if (alpha > 0)
            for (i=0; i<channels-1; ++i) c[i] /= alpha;
         else
            for (i=0; i<channels-1; ++i) c[i] = 1;
      }
   }

   if (to_gray)
   {
      if (channels < 3)
      {
         FUNC3(stderr, "%s: too few channels (%d) for -gray\n",
            prog, channels);
         FUNC9(prog);
      }

      c[0] = FUNC0(c[0], c[1], c[2]);
      channels -= 2;
   }

   if (to_color)
   {
      if (channels > 2)
      {
         FUNC3(stderr, "%s: too many channels (%d) for -color\n",
            prog, channels);
         FUNC9(prog);
      }

      c[3] = c[1]; /* alpha, if present */
      c[2] = c[1] = c[0];
   }

   if (to_linear)
   {
      int i;
      if ((channels & 1) == 0)
      {
         double alpha = c[channels-1];
         for (i=0; i<channels-1; ++i) c[i] *= alpha;
      }

      for (i=0; i<channels; ++i) c[i] = FUNC5(c[i] * 65535);
   }

   else /* to sRGB */
   {
      int i = (channels+1)&~1;
      while (--i >= 0)
         c[i] = FUNC7(c[i]);

      for (i=0; i<channels; ++i) c[i] = FUNC5(c[i] * 255);
   }

   {
      int i;
      for (i=0; i<channels; ++i) FUNC6(" %g", c[i]);
   }
   FUNC6("\n");

   return 0;
}