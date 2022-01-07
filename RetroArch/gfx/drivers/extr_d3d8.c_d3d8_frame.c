
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_19__ {unsigned int width; unsigned int height; char const* stat_text; int osd_stat_params; scalar_t__ statistics_show; scalar_t__ black_frame_insertion; } ;
typedef TYPE_2__ video_frame_info_t ;
typedef int uint64_t ;
struct font_params {int dummy; } ;
struct TYPE_18__ {int buffer; scalar_t__ offset; } ;
struct TYPE_20__ {int should_resize; unsigned int overlays_size; int dev; TYPE_15__* overlays; int mvp; scalar_t__ overlays_enabled; TYPE_1__ menu_display; TYPE_15__* menu; int dev_rotation; scalar_t__ needs_restore; } ;
typedef TYPE_3__ d3d8_video_t ;
typedef int Vertex ;
struct TYPE_21__ {int MaxZ; unsigned int Width; unsigned int Height; scalar_t__ MinZ; scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_17__ {scalar_t__ enabled; } ;
typedef int HWND ;
typedef TYPE_4__ D3DVIEWPORT8 ;


 int D3DCLEAR_TARGET ;
 scalar_t__ IsIconic (int ) ;
 int RARCH_ERR (char*) ;
 int d3d8_begin_scene (int ) ;
 int d3d8_clear (int ,int ,int ,int ,int ,int,int ) ;
 int d3d8_end_scene (int ) ;
 int d3d8_overlay_render (TYPE_3__*,TYPE_2__*,TYPE_15__*,int) ;
 int d3d8_renderchain_render (TYPE_3__*,void const*,unsigned int,unsigned int,unsigned int,int ) ;
 int d3d8_restore (TYPE_3__*) ;
 int d3d8_set_mvp (int ,int *) ;
 int d3d8_set_stream_source (int ,int ,int ,int ,int) ;
 int d3d8_set_viewport (TYPE_3__*,unsigned int,unsigned int,int,int) ;
 int d3d8_set_viewports (int ,TYPE_4__*) ;
 int d3d8_swap (TYPE_3__*,int ) ;
 int d3d8_update_title (TYPE_2__*) ;
 int font_driver_render_msg (TYPE_2__*,int *,char const*,struct font_params const*) ;
 int menu_driver_frame (TYPE_2__*) ;
 int string_is_empty (char const*) ;
 int win32_get_window () ;

__attribute__((used)) static bool d3d8_frame(void *data, const void *frame,
      unsigned frame_width, unsigned frame_height,
      uint64_t frame_count, unsigned pitch,
      const char *msg, video_frame_info_t *video_info)
{
   D3DVIEWPORT8 screen_vp;
   unsigned i = 0;
   d3d8_video_t *d3d = (d3d8_video_t*)data;
   unsigned width = video_info->width;
   unsigned height = video_info->height;
   (void)i;

   if (!frame)
      return 1;


   if (d3d->needs_restore)
   {

      HWND window = win32_get_window();
      if (IsIconic(window))
         return 1;


      if (!d3d8_restore(d3d))
      {
         RARCH_ERR("[D3D8]: Failed to restore.\n");
         return 0;
      }
   }

   if (d3d->should_resize)
   {
      d3d8_set_viewport(d3d, width, height, 0, 1);
      d3d->should_resize = 0;
   }



   screen_vp.X = 0;
   screen_vp.Y = 0;
   screen_vp.MinZ = 0;
   screen_vp.MaxZ = 1;
   screen_vp.Width = width;
   screen_vp.Height = height;
   d3d8_set_viewports(d3d->dev, &screen_vp);
   d3d8_clear(d3d->dev, 0, 0, D3DCLEAR_TARGET, 0, 1, 0);



   if (video_info->black_frame_insertion)
   {
      if (!d3d8_swap(d3d, d3d->dev) || d3d->needs_restore)
         return 1;
      d3d8_clear(d3d->dev, 0, 0, D3DCLEAR_TARGET, 0, 1, 0);
   }

   if (!d3d8_renderchain_render(
            d3d,
            frame, frame_width, frame_height,
            pitch, d3d->dev_rotation))
   {
      RARCH_ERR("[D3D8]: Failed to render scene.\n");
      return 0;
   }
   if (!string_is_empty(msg))
   {
      d3d8_set_viewports(d3d->dev, &screen_vp);
      d3d8_begin_scene(d3d->dev);
      font_driver_render_msg(video_info, ((void*)0), msg, ((void*)0));
      d3d8_end_scene(d3d->dev);
   }

   d3d8_update_title(video_info);
   d3d8_swap(d3d, d3d->dev);

   return 1;
}
