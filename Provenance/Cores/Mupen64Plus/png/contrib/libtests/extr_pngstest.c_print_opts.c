
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 int ACCUMULATE ;
 int FAST_WRITE ;
 int GBG_ERROR ;
 int KEEP_GOING ;
 int KEEP_TMPFILES ;
 int NO_RESEED ;
 int STRICT ;
 int USE_FILE ;
 int USE_STDIO ;
 int VERBOSE ;
 int printf (char*) ;
 int sRGB_16BIT ;

__attribute__((used)) static void
print_opts(png_uint_32 opts)
{
   if (opts & USE_FILE)
      printf(" --file");
   if (opts & USE_STDIO)
      printf(" --stdio");
   if (!(opts & STRICT))
      printf(" --nostrict");
   if (opts & VERBOSE)
      printf(" --verbose");
   if (opts & KEEP_TMPFILES)
      printf(" --preserve");
   if (opts & KEEP_GOING)
      printf(" --keep-going");
   if (opts & ACCUMULATE)
      printf(" --accumulate");
   if (!(opts & FAST_WRITE))
      printf(" --slow");
   if (opts & sRGB_16BIT)
      printf(" --sRGB-16bit");
   if (opts & NO_RESEED)
      printf(" --noreseed");

   if (opts & GBG_ERROR)
      printf(" --fault-gbg-warning");

}
