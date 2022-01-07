
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {char* operation; int transforms; int color_type; int * write_pp; int filter_method; int compression_method; int interlace_method; int bit_depth; int height; int width; int written_file; } ;
typedef int png_infop ;


 int APP_ERROR ;
 int PNG_COLOR_MASK_ALPHA ;
 int PNG_LIBPNG_VER_STRING ;
 int PNG_TRANSFORM_PACKING ;
 int PNG_TRANSFORM_STRIP_FILLER ;
 int PNG_TRANSFORM_STRIP_FILLER_BEFORE ;
 int buffer_start_write (int *) ;
 int display_clean_write (struct display*) ;
 int display_error ;
 int display_log (struct display*,int ,char*) ;
 int display_warning ;
 int * png_create_write_struct (int ,struct display*,int ,int ) ;
 int png_set_IHDR (int *,int ,int ,int ,int ,int,int ,int ,int ) ;
 int png_set_user_limits (int *,int,int) ;
 int png_set_write_fn (int *,int *,int ,int *) ;
 int png_write_png (int *,int ,int,int *) ;
 int write_function ;

__attribute__((used)) static void
write_png(struct display *dp, png_infop ip, int transforms)
{
   display_clean_write(dp);

   buffer_start_write(&dp->written_file);
   dp->operation = "write";
   dp->transforms = transforms;

   dp->write_pp = png_create_write_struct(PNG_LIBPNG_VER_STRING, dp,
      display_error, display_warning);

   if (dp->write_pp == ((void*)0))
      display_log(dp, APP_ERROR, "failed to create write png_struct");

   png_set_write_fn(dp->write_pp, &dp->written_file, write_function,
      ((void*)0) );
   if (transforms & (PNG_TRANSFORM_PACKING|
                     PNG_TRANSFORM_STRIP_FILLER|
                     PNG_TRANSFORM_STRIP_FILLER_BEFORE))
   {
      int ct = dp->color_type;

      if (transforms & (PNG_TRANSFORM_STRIP_FILLER|
                        PNG_TRANSFORM_STRIP_FILLER_BEFORE))
         ct &= ~PNG_COLOR_MASK_ALPHA;

      png_set_IHDR(dp->write_pp, ip, dp->width, dp->height, dp->bit_depth, ct,
         dp->interlace_method, dp->compression_method, dp->filter_method);
   }

   png_write_png(dp->write_pp, ip, transforms, ((void*)0) );




   display_clean_write(dp);
}
