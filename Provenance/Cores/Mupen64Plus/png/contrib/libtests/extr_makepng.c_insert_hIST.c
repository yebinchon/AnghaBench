
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_16 ;
typedef int png_structp ;
typedef int png_infop ;
typedef char** png_charpp ;


 int exit (int) ;
 int fprintf (int ,char*,int,char*) ;
 int memset (scalar_t__*,int ,int) ;
 int png_set_hIST (int ,int ,scalar_t__*) ;
 int stderr ;
 unsigned long strtoul (char*,char**,int ) ;

__attribute__((used)) static void
insert_hIST(png_structp png_ptr, png_infop info_ptr, int nparams,
      png_charpp params)
{
   int i;
   png_uint_16 freq[256];




   memset(freq, 0, sizeof freq);
   for (i=0; i<nparams; ++i)
   {
      char *endptr = ((void*)0);
      unsigned long int l = strtoul(params[i], &endptr, 0 );

      if (params[i][0] && *endptr == 0 && l <= 65535)
         freq[i] = (png_uint_16)l;

      else
      {
         fprintf(stderr, "hIST[%d]: %s: invalid frequency\n", i, params[i]);
         exit(1);
      }
   }

   png_set_hIST(png_ptr, info_ptr, freq);
}
