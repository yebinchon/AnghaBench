
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int format_list ;
typedef int Image ;


 int NO_RESEED ;
 int exit (int) ;
 int fflush (int ) ;
 int freeimage (int *) ;
 int initimage (int *,int,char const*,int) ;
 int newimage (int *) ;
 int print_opts (int) ;
 int printf (char*,...) ;
 int read_one_file (int *) ;
 int reseed () ;
 int stderr ;
 int stdout ;
 int testimage (int *,int,int *) ;

__attribute__((used)) static int
test_one_file(const char *file_name, format_list *formats, png_uint_32 opts,
   int stride_extra, int log_pass)
{
   int result;
   Image image;

   if (!(opts & NO_RESEED))
      reseed();
   newimage(&image);
   initimage(&image, opts, file_name, stride_extra);
   result = read_one_file(&image);
   if (result)
      result = testimage(&image, opts, formats);
   freeimage(&image);


   fflush(stderr);

   if (log_pass)
   {
      if (result)
         printf("PASS:");

      else
         printf("FAIL:");


         printf(" (no write)");


      print_opts(opts);
      printf(" %s\n", file_name);

      fflush(stdout);
   }

   else if (!result)
      exit(1);

   return result;
}
