
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct display {int options; int h; scalar_t__ ct; int bpp; int size; char* operation; int * ip; int * read_pp; int w; } ;
typedef TYPE_1__* png_colorp ;
struct TYPE_5__ {int red; int green; int blue; } ;
typedef TYPE_1__ png_color ;
typedef int png_alloc_size_t ;


 int FIX_INDEX ;
 int IGNORE_INDEX ;
 int LIBPNG_ERROR ;
 int MAX_SIZE ;
 int PNGCP_TIME_READ ;
 scalar_t__ PNG_COLOR_TYPE_PALETTE ;
 int PNG_HANDLE_CHUNK_ALWAYS ;
 scalar_t__ PNG_INFO_PLTE ;
 int PNG_LIBPNG_VER_STRING ;
 int display_clean_read (struct display*) ;
 int display_error ;
 int display_log (struct display*,int ,char*) ;
 int display_start_read (struct display*,char const*) ;
 int display_warning ;
 int end_timer (struct display*,int ) ;
 int * png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,struct display*,int ,int ) ;
 int png_error (int *,char*) ;
 scalar_t__ png_get_PLTE (int *,int *,TYPE_1__**,int*) ;
 int png_get_bit_depth (int *,int *) ;
 int png_get_channels (int *,int *) ;
 scalar_t__ png_get_color_type (int *,int *) ;
 int png_get_image_height (int *,int *) ;
 int png_get_image_width (int *,int *) ;
 int png_get_palette_max (int *,int *) ;
 int png_get_rowbytes (int *,int *) ;
 int png_read_png (int *,int *,unsigned int,int *) ;
 int png_set_PLTE (int *,int *,TYPE_1__*,int) ;
 int png_set_benign_errors (int *,int) ;
 int png_set_check_for_invalid_index (int *,int) ;
 int png_set_keep_unknown_chunks (int *,int ,int *,int ) ;
 int png_set_read_fn (int *,struct display*,int ) ;
 int png_set_user_limits (int *,int,int) ;
 int read_function ;
 int start_timer (struct display*,int ) ;

__attribute__((used)) static void
read_png(struct display *dp, const char *filename)
{
   display_clean_read(dp);
   display_start_read(dp, filename);

   dp->read_pp = png_create_read_struct(PNG_LIBPNG_VER_STRING, dp,
      display_error, display_warning);
   if (dp->read_pp == ((void*)0))
      display_log(dp, LIBPNG_ERROR, "failed to create read struct");
   dp->ip = png_create_info_struct(dp->read_pp);
   if (dp->ip == ((void*)0))
      png_error(dp->read_pp, "failed to create info struct");


   png_set_read_fn(dp->read_pp, dp, read_function);
   start_timer(dp, PNGCP_TIME_READ);
   png_read_png(dp->read_pp, dp->ip, 0U , ((void*)0) );
   end_timer(dp, PNGCP_TIME_READ);
   dp->w = png_get_image_width(dp->read_pp, dp->ip);
   dp->h = png_get_image_height(dp->read_pp, dp->ip);
   dp->ct = png_get_color_type(dp->read_pp, dp->ip);
   dp->bpp = png_get_bit_depth(dp->read_pp, dp->ip) *
             png_get_channels(dp->read_pp, dp->ip);
   {




      png_alloc_size_t rb = png_get_rowbytes(dp->read_pp, dp->ip);

      if (rb == 0)
         png_error(dp->read_pp, "invalid row byte count from libpng");


      if ((MAX_SIZE-dp->h)/rb < dp->h)
         png_error(dp->read_pp, "image too large");

      dp->size = rb * dp->h + dp->h ;
   }
   display_clean_read(dp);
   dp->operation = "none";
}
