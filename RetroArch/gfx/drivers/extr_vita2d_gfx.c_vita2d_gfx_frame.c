
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {float width; float height; int * texture; scalar_t__ active; } ;
struct TYPE_11__ {float width; float height; int y; int x; } ;
struct TYPE_13__ {unsigned int width; unsigned int height; scalar_t__ format; float const rotation; TYPE_2__ menu; scalar_t__ fullscreen; scalar_t__ overlay_enable; TYPE_1__ vp; int * texture; scalar_t__ should_resize; int tex_filter; } ;
typedef TYPE_3__ vita_video_t ;
struct TYPE_14__ {char const* stat_text; int osd_stat_params; scalar_t__ statistics_show; } ;
typedef TYPE_4__ video_frame_info_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct font_params {int dummy; } ;


 float PSP_FB_HEIGHT ;
 float PSP_FB_WIDTH ;
 int RARCH_LOG (char*,unsigned int,unsigned int) ;
 scalar_t__ SCE_GXM_TEXTURE_FORMAT_X8U8U8U8_1RGB ;
 int font_driver_render_msg (TYPE_4__*,int *,char const*,struct font_params const*) ;
 int memcpy_neon (int *,int const*,unsigned int) ;
 int menu_driver_frame (TYPE_4__*) ;
 int string_is_empty (char const*) ;
 int * vita2d_create_empty_texture_format (unsigned int,unsigned int,scalar_t__) ;
 int vita2d_draw_rectangle (int ,int ,float,float,int ) ;
 int vita2d_draw_texture_scale (int *,float,float,float,float) ;
 int vita2d_draw_texture_scale_rotate (int *,int ,int ,float,float,float const) ;
 int vita2d_end_drawing () ;
 int vita2d_free_texture (int *) ;
 int vita2d_get_clear_color () ;
 int vita2d_gfx_update_viewport (TYPE_3__*,TYPE_4__*) ;
 int vita2d_render_overlay (TYPE_3__*) ;
 int vita2d_start_drawing () ;
 int vita2d_swap_buffers () ;
 void const* vita2d_texture_get_datap (int *) ;
 unsigned int vita2d_texture_get_stride (int *) ;
 int vita2d_texture_set_filters (int *,int ,int ) ;

__attribute__((used)) static bool vita2d_gfx_frame(void *data, const void *frame,
      unsigned width, unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   void *tex_p;
   vita_video_t *vita = (vita_video_t *)data;

   if (frame)
   {
      if(!(vita->texture&&vita2d_texture_get_datap(vita->texture)==frame))
      {
         unsigned i;
         unsigned int stride;

         if ((width != vita->width || height != vita->height) && vita->texture)
         {
            vita2d_free_texture(vita->texture);
            vita->texture = ((void*)0);
         }

         if (!vita->texture)
         {
            RARCH_LOG("Creating texture: %ix%i\n", width, height);
            vita->width = width;
            vita->height = height;
            vita->texture = vita2d_create_empty_texture_format(width, height, vita->format);
            vita2d_texture_set_filters(vita->texture,vita->tex_filter,vita->tex_filter);
         }
         tex_p = vita2d_texture_get_datap(vita->texture);
         stride = vita2d_texture_get_stride(vita->texture);

         if (vita->format == SCE_GXM_TEXTURE_FORMAT_X8U8U8U8_1RGB)
         {
            stride /= 4;
            pitch /= 4;
            uint32_t *tex32 = tex_p;
            const uint32_t *frame32 = frame;

            for (i = 0; i < height; i++)
               memcpy_neon(&tex32[i*stride],&frame32[i*pitch],pitch*sizeof(uint32_t));
         }
         else
         {
            stride /= 2;
            pitch /= 2;
            uint16_t *tex16 = tex_p;
            const uint16_t *frame16 = frame;

            for (i = 0; i < height; i++)
               memcpy_neon(&tex16[i*stride],&frame16[i*pitch],width*sizeof(uint16_t));
         }
      }
   }

   if (vita->should_resize)
      vita2d_gfx_update_viewport(vita, video_info);

   vita2d_start_drawing();

   vita2d_draw_rectangle(0,0,PSP_FB_WIDTH,PSP_FB_HEIGHT,vita2d_get_clear_color());

   if (vita->texture)
   {
      if (vita->fullscreen)
         vita2d_draw_texture_scale(vita->texture,
               0, 0,
               PSP_FB_WIDTH / (float)vita->width,
               PSP_FB_HEIGHT / (float)vita->height);
      else
      {
         const float radian = 90 * 0.0174532925f;
         const float rad = vita->rotation * radian;
         float scalex = vita->vp.width / (float)vita->width;
         float scaley = vita->vp.height / (float)vita->height;
         vita2d_draw_texture_scale_rotate(vita->texture,vita->vp.x,
               vita->vp.y, scalex, scaley, rad);
      }
   }






   if (vita->menu.active)
   {




      if(vita->menu.texture)
      {
         if (vita->fullscreen)
            vita2d_draw_texture_scale(vita->menu.texture,
                  0, 0,
                  PSP_FB_WIDTH / (float)vita->menu.width,
                  PSP_FB_HEIGHT / (float)vita->menu.height);
         else
         {
            if (vita->menu.width > vita->menu.height)
            {
               float scale = PSP_FB_HEIGHT / (float)vita->menu.height;
               float w = vita->menu.width * scale;
               vita2d_draw_texture_scale(vita->menu.texture,
                     PSP_FB_WIDTH / 2.0f - w/2.0f, 0.0f,
                     scale, scale);
            }
            else
            {
               float scale = PSP_FB_WIDTH / (float)vita->menu.width;
               float h = vita->menu.height * scale;
               vita2d_draw_texture_scale(vita->menu.texture,
                     0.0f, PSP_FB_HEIGHT / 2.0f - h/2.0f,
                     scale, scale);
            }
         }
      }
   }
   else if (video_info->statistics_show)
   {
      struct font_params *osd_params = (struct font_params*)
         &video_info->osd_stat_params;

      if (osd_params)
      {
         font_driver_render_msg(video_info, ((void*)0), video_info->stat_text,
               (const struct font_params*)&video_info->osd_stat_params);
      }
   }

   if(!string_is_empty(msg))
      font_driver_render_msg(video_info, ((void*)0), msg, ((void*)0));

   vita2d_end_drawing();
   vita2d_swap_buffers();

   return 1;
}
