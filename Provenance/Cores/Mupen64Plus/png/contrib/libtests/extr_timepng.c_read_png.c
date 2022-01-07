
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * png_structp ;
typedef int png_int_32 ;
typedef int * png_infop ;
typedef int FILE ;


 int PNG_LIBPNG_VER_STRING ;
 int no_warnings ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,int ,int ,int ) ;
 int png_destroy_read_struct (int **,int **,int *) ;
 int png_error (int *,char*) ;
 int png_init_io (int *,int *) ;
 int png_jmpbuf (int *) ;
 int png_read_png (int *,int *,int ,int *) ;
 int png_set_benign_errors (int *,int) ;
 int read_by_row (int *,int *,int *,int *) ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static int read_png(FILE *fp, png_int_32 transforms, FILE *write_file)
{
   png_structp png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING,0,0,
         no_warnings);
   png_infop info_ptr = ((void*)0);

   if (png_ptr == ((void*)0))
      return 0;

   if (setjmp(png_jmpbuf(png_ptr)))
   {
      png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
      return 0;
   }




   png_init_io(png_ptr, fp);

   info_ptr = png_create_info_struct(png_ptr);

   if (info_ptr == ((void*)0))
      png_error(png_ptr, "OOM allocating info structure");

   if (transforms < 0)
      read_by_row(png_ptr, info_ptr, write_file, fp);

   else
      png_read_png(png_ptr, info_ptr, transforms, ((void*)0) );

   png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
   return 1;
}
