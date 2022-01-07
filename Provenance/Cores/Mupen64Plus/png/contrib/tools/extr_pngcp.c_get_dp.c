
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int dummy; } ;
typedef int png_structp ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ png_get_error_ptr (int ) ;
 int stderr ;

__attribute__((used)) static struct display *
get_dp(png_structp pp)

{
   struct display *dp = (struct display*)png_get_error_ptr(pp);

   if (dp == ((void*)0))
   {
      fprintf(stderr, "pngcp: internal error (no display)\n");
      exit(99);
   }

   return dp;
}
