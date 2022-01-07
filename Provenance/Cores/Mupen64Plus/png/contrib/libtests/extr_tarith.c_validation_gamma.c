
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double png_uint_16 ;
typedef double png_fixed_point ;
typedef double png_byte ;


 double PNG_FP_1 ;
 int exp (int) ;
 double fabs (double) ;
 double floor (double) ;
 int fprintf (int ,char*,...) ;
 int log (int) ;
 int png_exp (int) ;
 int png_exp16bit (int) ;
 int png_exp8bit (int) ;
 double png_gamma_16bit_correct (unsigned int,double) ;
 double png_gamma_8bit_correct (unsigned int,double) ;
 int png_log16bit (int) ;
 int png_log8bit (int) ;
 int pow (unsigned int,double) ;
 int printf (char*,double,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int validation_gamma(int argc, char **argv)
{
   double gamma[9] = { 2.2, 1.8, 1.52, 1.45, 1., 1/1.45, 1/1.52, 1/1.8, 1/2.2 };
   double maxerr;
   int i, silent=0, onlygamma=0;


   while (--argc > 0)
      if (strcmp(*++argv, "-s") == 0)
         silent = 1;
      else if (strcmp(*argv, "-g") == 0)
         onlygamma = 1;
      else
      {
         fprintf(stderr, "unknown argument %s\n", *argv);
         return 1;
      }

   if (!onlygamma)
   {

      maxerr = 0;
      for (i=0; i<256; ++i)
      {
         double correct = -log(i/255.)/log(2.)*65536;
         double error = png_log8bit(i) - correct;

         if (i != 0 && fabs(error) > maxerr)
            maxerr = fabs(error);

         if (i == 0 && png_log8bit(i) != 0xffffffff ||
             i != 0 && png_log8bit(i) != floor(correct+.5))
         {
            fprintf(stderr, "8-bit log error: %d: got %u, expected %f\n",
               i, png_log8bit(i), correct);
         }
      }

      if (!silent)
         printf("maximum 8-bit log error = %f\n", maxerr);

      maxerr = 0;
      for (i=0; i<65536; ++i)
      {
         double correct = -log(i/65535.)/log(2.)*65536;
         double error = png_log16bit(i) - correct;

         if (i != 0 && fabs(error) > maxerr)
            maxerr = fabs(error);

         if (i == 0 && png_log16bit(i) != 0xffffffff ||
             i != 0 && png_log16bit(i) != floor(correct+.5))
         {
            if (error > .68)
            {
               fprintf(stderr, "16-bit log error: %d: got %u, expected %f"
                  " error: %f\n", i, png_log16bit(i), correct, error);
            }
         }
      }

      if (!silent)
         printf("maximum 16-bit log error = %f\n", maxerr);


      maxerr = 0;
      for (i=0; i<=0xfffff; ++i)
      {
         double correct = exp(-i/65536. * log(2.)) * (65536. * 65536);
         double error = png_exp(i) - correct;

         if (fabs(error) > maxerr)
            maxerr = fabs(error);
         if (fabs(error) > 1883)
         {
            fprintf(stderr, "32-bit exp error: %d: got %u, expected %f"
                  " error: %f\n", i, png_exp(i), correct, error);
         }
      }

      if (!silent)
         printf("maximum 32-bit exp error = %f\n", maxerr);

      maxerr = 0;
      for (i=0; i<=0xfffff; ++i)
      {
         double correct = exp(-i/65536. * log(2.)) * 255;
         double error = png_exp8bit(i) - correct;

         if (fabs(error) > maxerr)
            maxerr = fabs(error);
         if (fabs(error) > .50002)
         {
            fprintf(stderr, "8-bit exp error: %d: got %u, expected %f"
                  " error: %f\n", i, png_exp8bit(i), correct, error);
         }
      }

      if (!silent)
         printf("maximum 8-bit exp error = %f\n", maxerr);

      maxerr = 0;
      for (i=0; i<=0xfffff; ++i)
      {
         double correct = exp(-i/65536. * log(2.)) * 65535;
         double error = png_exp16bit(i) - correct;

         if (fabs(error) > maxerr)
            maxerr = fabs(error);
         if (fabs(error) > .524)
         {
            fprintf(stderr, "16-bit exp error: %d: got %u, expected %f"
                  " error: %f\n", i, png_exp16bit(i), correct, error);
         }
      }

      if (!silent)
         printf("maximum 16-bit exp error = %f\n", maxerr);
   }


   for (i=0; i<9; ++i)
   {
      unsigned j;
      double g = gamma[i];
      png_fixed_point gfp = floor(g * PNG_FP_1 + .5);

      if (!silent)
         printf("Test gamma %f\n", g);

      maxerr = 0;
      for (j=0; j<256; ++j)
      {
         double correct = pow(j/255., g) * 255;
         png_byte out = png_gamma_8bit_correct(j, gfp);
         double error = out - correct;

         if (fabs(error) > maxerr)
            maxerr = fabs(error);
         if (out != floor(correct+.5))
         {
            fprintf(stderr, "8bit %d ^ %f: got %d expected %f error %f\n",
               j, g, out, correct, error);
         }
      }

      if (!silent)
         printf("gamma %f: maximum 8-bit error %f\n", g, maxerr);

      maxerr = 0;
      for (j=0; j<65536; ++j)
      {
         double correct = pow(j/65535., g) * 65535;
         png_uint_16 out = png_gamma_16bit_correct(j, gfp);
         double error = out - correct;

         if (fabs(error) > maxerr)
            maxerr = fabs(error);
         if (fabs(error) > 1.62)
         {
            fprintf(stderr, "16bit %d ^ %f: got %d expected %f error %f\n",
               j, g, out, correct, error);
         }
      }

      if (!silent)
         printf("gamma %f: maximum 16-bit error %f\n", g, maxerr);
   }

   return 0;
}
