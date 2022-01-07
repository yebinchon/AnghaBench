
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int * png_structp ;
typedef int * png_infop ;
typedef int png_charp ;
typedef int * png_bytep ;
typedef int FILE ;


 int PNG_INFO_iCCP ;
 int PNG_LIBPNG_VER_STRING ;
 int fprintf (int ,char*) ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int * no_profile ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,int ,int ,int ) ;
 int png_destroy_read_struct (int **,int **,int *) ;
 int png_error (int *,char*) ;
 int png_get_iCCP (int *,int *,int *,int*,int **,scalar_t__*) ;
 int png_init_io (int *,int *) ;
 int png_jmpbuf (int *) ;
 int png_read_info (int *,int *) ;
 scalar_t__ setjmp (int ) ;
 int stderr ;

__attribute__((used)) static png_bytep
extract(FILE *fp, png_uint_32 *proflen)
{
   png_structp png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING,0,0,0);
   png_infop info_ptr = ((void*)0);
   png_bytep result = ((void*)0);


   *proflen = 0;

   if (png_ptr == ((void*)0))
   {
      fprintf(stderr, "iccfrompng: version library mismatch?\n");
      return 0;
   }

   if (setjmp(png_jmpbuf(png_ptr)))
   {
      png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
      return 0;
   }

   png_init_io(png_ptr, fp);

   info_ptr = png_create_info_struct(png_ptr);
   if (info_ptr == ((void*)0))
      png_error(png_ptr, "OOM allocating info structure");

   png_read_info(png_ptr, info_ptr);

   {
      png_charp name;
      int compression_type;
      png_bytep profile;

      if (png_get_iCCP(png_ptr, info_ptr, &name, &compression_type, &profile,
         proflen) & PNG_INFO_iCCP)
      {
         result = malloc(*proflen);
         if (result != ((void*)0))
            memcpy(result, profile, *proflen);

         else
            png_error(png_ptr, "OOM allocating profile buffer");
      }

      else
 result = no_profile;
   }

   png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
   return result;
}
