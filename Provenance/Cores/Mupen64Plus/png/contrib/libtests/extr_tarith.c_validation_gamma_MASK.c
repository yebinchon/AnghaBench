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
typedef  double png_uint_16 ;
typedef  double png_fixed_point ;
typedef  double png_byte ;

/* Variables and functions */
 double PNG_FP_1 ; 
 int FUNC0 (int) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 double FUNC8 (unsigned int,double) ; 
 double FUNC9 (unsigned int,double) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (unsigned int,double) ; 
 int /*<<< orphan*/  FUNC13 (char*,double,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC14 (char*,char*) ; 

int FUNC15(int argc, char **argv)
{
   double gamma[9] = { 2.2, 1.8, 1.52, 1.45, 1., 1/1.45, 1/1.52, 1/1.8, 1/2.2 };
   double maxerr;
   int i, silent=0, onlygamma=0;

   /* Silence the output with -s, just test the gamma functions with -g: */
   while (--argc > 0)
      if (FUNC14(*++argv, "-s") == 0)
         silent = 1;
      else if (FUNC14(*argv, "-g") == 0)
         onlygamma = 1;
      else
      {
         FUNC3(stderr, "unknown argument %s\n", *argv);
         return 1;
      }

   if (!onlygamma)
   {
      /* First validate the log functions: */
      maxerr = 0;
      for (i=0; i<256; ++i)
      {
         double correct = -FUNC4(i/255.)/FUNC4(2.)*65536;
         double error = FUNC11(i) - correct;

         if (i != 0 && FUNC1(error) > maxerr)
            maxerr = FUNC1(error);

         if (i == 0 && FUNC11(i) != 0xffffffff ||
             i != 0 && FUNC11(i) != FUNC2(correct+.5))
         {
            FUNC3(stderr, "8-bit log error: %d: got %u, expected %f\n",
               i, FUNC11(i), correct);
         }
      }

      if (!silent)
         FUNC13("maximum 8-bit log error = %f\n", maxerr);

      maxerr = 0;
      for (i=0; i<65536; ++i)
      {
         double correct = -FUNC4(i/65535.)/FUNC4(2.)*65536;
         double error = FUNC10(i) - correct;

         if (i != 0 && FUNC1(error) > maxerr)
            maxerr = FUNC1(error);

         if (i == 0 && FUNC10(i) != 0xffffffff ||
             i != 0 && FUNC10(i) != FUNC2(correct+.5))
         {
            if (error > .68) /* By experiment error is less than .68 */
            {
               FUNC3(stderr, "16-bit log error: %d: got %u, expected %f"
                  " error: %f\n", i, FUNC10(i), correct, error);
            }
         }
      }

      if (!silent)
         FUNC13("maximum 16-bit log error = %f\n", maxerr);

      /* Now exponentiations. */
      maxerr = 0;
      for (i=0; i<=0xfffff; ++i)
      {
         double correct = FUNC0(-i/65536. * FUNC4(2.)) * (65536. * 65536);
         double error = FUNC5(i) - correct;

         if (FUNC1(error) > maxerr)
            maxerr = FUNC1(error);
         if (FUNC1(error) > 1883) /* By experiment. */
         {
            FUNC3(stderr, "32-bit exp error: %d: got %u, expected %f"
                  " error: %f\n", i, FUNC5(i), correct, error);
         }
      }

      if (!silent)
         FUNC13("maximum 32-bit exp error = %f\n", maxerr);

      maxerr = 0;
      for (i=0; i<=0xfffff; ++i)
      {
         double correct = FUNC0(-i/65536. * FUNC4(2.)) * 255;
         double error = FUNC7(i) - correct;

         if (FUNC1(error) > maxerr)
            maxerr = FUNC1(error);
         if (FUNC1(error) > .50002) /* By experiment */
         {
            FUNC3(stderr, "8-bit exp error: %d: got %u, expected %f"
                  " error: %f\n", i, FUNC7(i), correct, error);
         }
      }

      if (!silent)
         FUNC13("maximum 8-bit exp error = %f\n", maxerr);

      maxerr = 0;
      for (i=0; i<=0xfffff; ++i)
      {
         double correct = FUNC0(-i/65536. * FUNC4(2.)) * 65535;
         double error = FUNC6(i) - correct;

         if (FUNC1(error) > maxerr)
            maxerr = FUNC1(error);
         if (FUNC1(error) > .524) /* By experiment */
         {
            FUNC3(stderr, "16-bit exp error: %d: got %u, expected %f"
                  " error: %f\n", i, FUNC6(i), correct, error);
         }
      }

      if (!silent)
         FUNC13("maximum 16-bit exp error = %f\n", maxerr);
   } /* !onlygamma */

   /* Test the overall gamma correction. */
   for (i=0; i<9; ++i)
   {
      unsigned j;
      double g = gamma[i];
      png_fixed_point gfp = FUNC2(g * PNG_FP_1 + .5);

      if (!silent)
         FUNC13("Test gamma %f\n", g);

      maxerr = 0;
      for (j=0; j<256; ++j)
      {
         double correct = FUNC12(j/255., g) * 255;
         png_byte out = FUNC9(j, gfp);
         double error = out - correct;

         if (FUNC1(error) > maxerr)
            maxerr = FUNC1(error);
         if (out != FUNC2(correct+.5))
         {
            FUNC3(stderr, "8bit %d ^ %f: got %f expected %f error %f\n",
               j, g, out, correct, error);
         }
      }

      if (!silent)
         FUNC13("gamma %f: maximum 8-bit error %f\n", g, maxerr);

      maxerr = 0;
      for (j=0; j<65536; ++j)
      {
         double correct = FUNC12(j/65535., g) * 65535;
         png_uint_16 out = FUNC8(j, gfp);
         double error = out - correct;

         if (FUNC1(error) > maxerr)
            maxerr = FUNC1(error);
         if (FUNC1(error) > 1.62)
         {
            FUNC3(stderr, "16bit %d ^ %f: got %f expected %f error %f\n",
               j, g, out, correct, error);
         }
      }

      if (!silent)
         FUNC13("gamma %f: maximum 16-bit error %f\n", g, maxerr);
   }

   return 0;
}