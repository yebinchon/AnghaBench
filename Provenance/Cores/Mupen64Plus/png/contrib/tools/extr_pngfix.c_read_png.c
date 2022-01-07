
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* global; int jmpbuf; int status_code; } ;
struct control {TYPE_2__ file; } ;
typedef int png_uint_32 ;
typedef int * png_structp ;
typedef int * png_infop ;
struct TYPE_3__ {scalar_t__ verbose; } ;


 int INTERNAL_ERROR ;
 int LIBPNG_ERROR_CODE ;
 int PNG_LIBPNG_VER_STRING ;
 int error_handler ;
 int fprintf (int ,char*) ;
 int log_error (TYPE_2__*,int,char*) ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,struct control*,int ,int ) ;
 int png_destroy_read_struct (int **,int **,int *) ;
 int png_error (int *,char*) ;
 int png_get_image_height (int *,int *) ;
 int png_read_end (int *,int *) ;
 int png_read_info (int *,int *) ;
 int png_read_row (int *,int *,int *) ;
 int png_set_chunk_cache_max (int *,int ) ;
 int png_set_chunk_malloc_max (int *,int ) ;
 int png_set_interlace_handling (int *) ;
 int png_set_read_fn (int *,struct control*,int ) ;
 int png_set_user_limits (int *,int,int) ;
 int png_start_read_image (int *) ;
 int read_callback ;
 int setjmp (int ) ;
 int stderr ;
 int warning_handler ;

__attribute__((used)) static int
read_png(struct control *control)



{
   png_structp png_ptr;
   png_infop info_ptr = ((void*)0);
   volatile int rc;

   png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, control,
      error_handler, warning_handler);

   if (png_ptr == ((void*)0))
   {

      log_error(&control->file, LIBPNG_ERROR_CODE, "OOM allocating png_struct");
      control->file.status_code |= INTERNAL_ERROR;
      return LIBPNG_ERROR_CODE;
   }

   rc = setjmp(control->file.jmpbuf);
   if (rc == 0)
   {
      png_set_read_fn(png_ptr, control, read_callback);

      info_ptr = png_create_info_struct(png_ptr);
      if (info_ptr == ((void*)0))
         png_error(png_ptr, "OOM allocating info structure");

      if (control->file.global->verbose)
         fprintf(stderr, " INFO\n");

      png_read_info(png_ptr, info_ptr);

      {
        png_uint_32 height = png_get_image_height(png_ptr, info_ptr);
        int passes = png_set_interlace_handling(png_ptr);
        int pass;

        png_start_read_image(png_ptr);

        for (pass = 0; pass < passes; ++pass)
        {
           png_uint_32 y = height;




           while (y-- > 0)
              png_read_row(png_ptr, ((void*)0), ((void*)0));
        }
      }

      if (control->file.global->verbose)
         fprintf(stderr, " END\n");


      png_read_end(png_ptr, info_ptr);
   }

   png_destroy_read_struct(&png_ptr, &info_ptr, ((void*)0));
   return rc;
}
