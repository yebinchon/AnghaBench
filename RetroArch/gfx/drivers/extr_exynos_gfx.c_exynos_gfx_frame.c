
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int osd_stat_params; int stat_text; scalar_t__ statistics_show; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int uint64_t ;
struct font_params {int dummy; } ;
struct exynos_video {unsigned int width; unsigned int height; int data; int menu_rotation; scalar_t__ menu_active; int bytes_per_pixel; } ;
struct exynos_page {int clear; int used; } ;


 int RARCH_LOG (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ exynos_blend_menu (int ,int ) ;
 scalar_t__ exynos_blit_frame (int ,void const*,unsigned int) ;
 scalar_t__ exynos_flip (int ,struct exynos_page*) ;
 struct exynos_page* exynos_free_page (int ) ;
 scalar_t__ exynos_render_msg (struct exynos_video*,char const*) ;
 int exynos_set_fake_blit (int ) ;
 int exynos_setup_scale (int ,unsigned int,unsigned int,int ) ;
 int font_driver_render_msg (TYPE_1__*,int *,int ,struct font_params const*) ;
 int menu_driver_frame (TYPE_1__*) ;

__attribute__((used)) static bool exynos_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count, unsigned pitch, const char *msg,
      video_frame_info_t *video_info)
{
   struct exynos_video *vid = data;
   struct exynos_page *page = ((void*)0);


   if (!vid->menu_active && !frame)
      return 1;

   if (frame != ((void*)0))
   {
      if (width != vid->width || height != vid->height)
      {

         if (width == 0 || height == 0)
            return 1;

         RARCH_LOG("[video_exynos]: resolution changed by core: %ux%u -> %ux%u\n",
               vid->width, vid->height, width, height);
         exynos_setup_scale(vid->data, width, height, vid->bytes_per_pixel);

         vid->width = width;
         vid->height = height;
      }

      page = exynos_free_page(vid->data);

      if (exynos_blit_frame(vid->data, frame, pitch) != 0)
         goto fail;
   }



   if (vid->width == 0 || vid->height == 0)
      exynos_set_fake_blit(vid->data);

   if (!page)
      page = exynos_free_page(vid->data);

   if (vid->menu_active)
   {
      if (exynos_blend_menu(vid->data, vid->menu_rotation) != 0)
         goto fail;



   }
   else if (video_info->statistics_show)
   {
      struct font_params *osd_params = video_info ?
         (struct font_params*)&video_info->osd_stat_params : ((void*)0);

      if (osd_params)
      {
         font_driver_render_msg(video_info, ((void*)0), video_info->stat_text,
               (const struct font_params*)&video_info->osd_stat_params);
      }
   }

   if (msg)
   {
      if (exynos_render_msg(vid, msg) != 0)
         goto fail;


      page->clear = 1;
   }

   if (exynos_flip(vid->data, page) != 0)
      goto fail;

   return 1;

fail:


   page->used = 0;

   return 0;
}
