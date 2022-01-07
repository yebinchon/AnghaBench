
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display {int chunks; int bit_depth; int color_type; int active_transforms; int ignored_transforms; int filter_method; int compression_method; int interlace_method; int height; int width; int * original_rows; int original_rowbytes; int * read_ip; int * original_ip; int * read_pp; int * original_pp; int original_file; } ;
typedef int png_uint_32 ;
typedef int * png_structp ;
typedef int * png_infop ;
struct TYPE_2__ {int transform; int valid_chunks; int color_mask_required; int color_mask_absent; int bit_depths; int when; int * name; } ;


 int LIBPNG_BUG ;
 int PNG_INFO_IDAT ;
 int TRANSFORM_R ;
 unsigned int TTABLE_SIZE ;
 int display_log (struct display*,int ,char*) ;
 int png_get_IHDR (int *,int *,int *,int *,int*,int*,int *,int *,int *) ;
 int png_get_rowbytes (int *,int *) ;
 int * png_get_rows (int *,int *) ;
 int png_get_valid (int *,int *,int) ;
 int read_png (struct display*,int *,char*,int ) ;
 TYPE_1__* transform_info ;

__attribute__((used)) static void
update_display(struct display *dp)



{
   png_structp pp;
   png_infop ip;


   read_png(dp, &dp->original_file, "original read", 0 );


   dp->original_pp = pp = dp->read_pp, dp->read_pp = ((void*)0);
   dp->original_ip = ip = dp->read_ip, dp->read_ip = ((void*)0);

   dp->original_rowbytes = png_get_rowbytes(pp, ip);
   if (dp->original_rowbytes == 0)
      display_log(dp, LIBPNG_BUG, "png_get_rowbytes returned 0");

   dp->chunks = png_get_valid(pp, ip, 0xffffffff);
   if ((dp->chunks & PNG_INFO_IDAT) == 0)
      display_log(dp, LIBPNG_BUG, "png_read_png did not set IDAT flag");

   dp->original_rows = png_get_rows(pp, ip);
   if (dp->original_rows == ((void*)0))
      display_log(dp, LIBPNG_BUG, "png_read_png did not create row buffers");

   if (!png_get_IHDR(pp, ip,
      &dp->width, &dp->height, &dp->bit_depth, &dp->color_type,
      &dp->interlace_method, &dp->compression_method, &dp->filter_method))
      display_log(dp, LIBPNG_BUG, "png_get_IHDR failed");





   {
      png_uint_32 chunks = dp->chunks;
      int active = 0, inactive = 0;
      int ct = dp->color_type;
      int bd = dp->bit_depth;
      unsigned int i;

      for (i=0; i<TTABLE_SIZE; ++i) if (transform_info[i].name != ((void*)0))
      {
         int transform = transform_info[i].transform;

         if ((transform_info[i].valid_chunks == 0 ||
               (transform_info[i].valid_chunks & chunks) != 0) &&
            (transform_info[i].color_mask_required & ct) ==
               transform_info[i].color_mask_required &&
            (transform_info[i].color_mask_absent & ct) == 0 &&
            (transform_info[i].bit_depths & bd) != 0 &&
            (transform_info[i].when & TRANSFORM_R) != 0)
            active |= transform;

         else if ((transform_info[i].when & TRANSFORM_R) != 0)
            inactive |= transform;
      }





      inactive &= ~active;

      dp->active_transforms = active;
      dp->ignored_transforms = inactive;
   }
}
