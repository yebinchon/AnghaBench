
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int * png_structp ;
typedef int png_size_t ;
typedef int * png_infop ;
typedef int * png_bytep ;
typedef int FILE ;


 int PNG_HANDLE_CHUNK_ALWAYS ;
 scalar_t__ PNG_INTERLACE_ADAM7 ;
 int PNG_INTERLACE_ADAM7_PASSES ;
 int PNG_LIBPNG_VER_STRING ;
 int PNG_PASS_ROWS (int ,int) ;
 int free (int *) ;
 int * malloc (int ) ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,int ,int ,int ) ;
 int png_destroy_read_struct (int **,int **,int *) ;
 int png_error (int *,char*) ;
 int png_get_image_height (int *,int *) ;
 scalar_t__ png_get_interlace_type (int *,int *) ;
 int png_get_rowbytes (int *,int *) ;
 int png_init_io (int *,int *) ;
 int png_jmpbuf (int *) ;
 int png_read_end (int *,int *) ;
 int png_read_info (int *,int *) ;
 int png_read_row (int *,int *,int *) ;
 int png_set_interlace_handling (int *) ;
 int png_set_keep_unknown_chunks (int *,int ,int *,int ) ;
 int png_start_read_image (int *) ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static int
read_png(FILE *fp)
{
   png_structp png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING,0,0,0);
   png_infop info_ptr = ((void*)0);
   png_bytep row = ((void*)0), display = ((void*)0);

   if (png_ptr == ((void*)0))
      return 0;

   if (setjmp(png_jmpbuf(png_ptr)))
   {
      png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
      if (row != ((void*)0)) free(row);
      if (display != ((void*)0)) free(display);
      return 0;
   }

   png_init_io(png_ptr, fp);

   info_ptr = png_create_info_struct(png_ptr);
   if (info_ptr == ((void*)0))
      png_error(png_ptr, "OOM allocating info structure");

   png_set_keep_unknown_chunks(png_ptr, PNG_HANDLE_CHUNK_ALWAYS, ((void*)0), 0);

   png_read_info(png_ptr, info_ptr);

   {
      png_size_t rowbytes = png_get_rowbytes(png_ptr, info_ptr);


      row = malloc(rowbytes);
      display = malloc(rowbytes);

      if (row == ((void*)0) || display == ((void*)0))
         png_error(png_ptr, "OOM allocating row buffers");

      {
         png_uint_32 height = png_get_image_height(png_ptr, info_ptr);



            int passes = png_get_interlace_type(png_ptr, info_ptr) ==
               PNG_INTERLACE_ADAM7 ? PNG_INTERLACE_ADAM7_PASSES : 1;

         int pass;

         png_start_read_image(png_ptr);

         for (pass = 0; pass < passes; ++pass)
         {
            png_uint_32 y = height;


               if (passes == PNG_INTERLACE_ADAM7_PASSES)
                  y = PNG_PASS_ROWS(y, pass);





            while (y-- > 0)
               png_read_row(png_ptr, row, display);
         }
      }
   }


   png_read_end(png_ptr, info_ptr);
   png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
   free(row);
   free(display);
   return 1;
}
