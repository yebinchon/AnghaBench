
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long tv_sec; long tv_nsec; } ;
typedef int png_int_32 ;
typedef int FILE ;


 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ mytime (struct timespec*) ;
 int perror (char*) ;
 int printf (char*,unsigned long,long) ;
 scalar_t__ read_png (int *,int ,int *) ;
 int rewind (int *) ;
 int stderr ;
 int * stdout ;

__attribute__((used)) static int perform_one_test(FILE *fp, int nfiles, png_int_32 transforms)
{
   int i;
   struct timespec before, after;


   rewind(fp);

   if (mytime(&before))
   {
      for (i=0; i<nfiles; ++i)
      {
         if (read_png(fp, transforms, ((void*)0) ))
         {
            if (ferror(fp))
            {
               perror("temporary file");
               fprintf(stderr, "file %d: error reading PNG data\n", i);
               return 0;
            }
         }

         else
         {
            perror("temporary file");
            fprintf(stderr, "file %d: error from libpng\n", i);
            return 0;
         }
      }
   }

   else
      return 0;

   if (mytime(&after))
   {



      unsigned long s = after.tv_sec - before.tv_sec;
      long ns = after.tv_nsec - before.tv_nsec;

      if (ns < 0)
      {
         --s;
         ns += 1000000000;

         if (ns < 0)
         {
            fprintf(stderr, "timepng: bad clock from kernel\n");
            return 0;
         }
      }

      printf("%lu.%.9ld\n", s, ns);
      fflush(stdout);
      if (ferror(stdout))
      {
         fprintf(stderr, "timepng: error writing output\n");
         return 0;
      }


      return 1;
   }

   else
      return 0;
}
