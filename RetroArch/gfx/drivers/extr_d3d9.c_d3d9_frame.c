
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;


struct TYPE_24__ {unsigned int width; unsigned int height; char const* stat_text; scalar_t__ widgets_inited; int osd_stat_params; scalar_t__ statistics_show; scalar_t__ black_frame_insertion; } ;
typedef TYPE_3__ video_frame_info_t ;
typedef int uint64_t ;
struct font_params {int dummy; } ;
struct TYPE_23__ {scalar_t__ buffer; scalar_t__ decl; scalar_t__ offset; } ;
struct TYPE_25__ {int should_resize; unsigned int overlays_size; int dev; TYPE_19__* overlays; int mvp; scalar_t__ overlays_enabled; TYPE_2__ menu_display; TYPE_19__* menu; int dev_rotation; TYPE_1__* renderchain_driver; scalar_t__ needs_restore; int final_viewport; int renderchain_data; } ;
typedef TYPE_4__ d3d9_video_t ;
typedef int Vertex ;
struct TYPE_26__ {int MaxZ; unsigned int Width; unsigned int Height; scalar_t__ MinZ; scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_22__ {int (* render ) (TYPE_4__*,TYPE_3__*,void const*,unsigned int,unsigned int,unsigned int,int ) ;int (* set_final_viewport ) (TYPE_4__*,int ,int *) ;} ;
struct TYPE_21__ {scalar_t__ enabled; } ;
typedef int LPDIRECT3DVERTEXDECLARATION9 ;
typedef int LPDIRECT3DVERTEXBUFFER9 ;
typedef int HWND ;
typedef TYPE_5__ D3DVIEWPORT9 ;


 int D3DCLEAR_TARGET ;
 scalar_t__ IsIconic (int ) ;
 int RARCH_ERR (char*) ;
 int d3d9_begin_scene (int ) ;
 int d3d9_clear (int ,int ,int ,int ,int ,int,int ) ;
 int d3d9_end_scene (int ) ;
 int d3d9_overlay_render (TYPE_4__*,TYPE_3__*,TYPE_19__*,int) ;
 int d3d9_restore (TYPE_4__*) ;
 int d3d9_set_mvp (int ,int *) ;
 int d3d9_set_stream_source (int ,int ,int ,int ,int) ;
 int d3d9_set_vertex_declaration (int ,int ) ;
 int d3d9_set_viewport (TYPE_4__*,unsigned int,unsigned int,int,int) ;
 int d3d9_set_viewports (int ,TYPE_5__*) ;
 int d3d9_swap (TYPE_4__*,int ) ;
 int d3d9_update_title (TYPE_3__*) ;
 int font_driver_render_msg (TYPE_3__*,int *,char const*,struct font_params const*) ;
 int menu_driver_frame (TYPE_3__*) ;
 int menu_widgets_frame (TYPE_3__*) ;
 int stub1 (TYPE_4__*,int ,int *) ;
 int stub2 (TYPE_4__*,TYPE_3__*,void const*,unsigned int,unsigned int,unsigned int,int ) ;
 int win32_get_window () ;

__attribute__((used)) static bool d3d9_frame(void *data, const void *frame,
      unsigned frame_width, unsigned frame_height,
      uint64_t frame_count, unsigned pitch,
      const char *msg, video_frame_info_t *video_info)
{
   D3DVIEWPORT9 screen_vp;
   unsigned i = 0;
   d3d9_video_t *d3d = (d3d9_video_t*)data;
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


      if (!d3d9_restore(d3d))
      {
         RARCH_ERR("[D3D9]: Failed to restore.\n");
         return 0;
      }
   }

   if (d3d->should_resize)
   {
      d3d9_set_viewport(d3d, width, height, 0, 1);
      if (d3d->renderchain_driver->set_final_viewport)
         d3d->renderchain_driver->set_final_viewport(d3d,
               d3d->renderchain_data, &d3d->final_viewport);

      d3d->should_resize = 0;
   }



   screen_vp.X = 0;
   screen_vp.Y = 0;
   screen_vp.MinZ = 0;
   screen_vp.MaxZ = 1;
   screen_vp.Width = width;
   screen_vp.Height = height;
   d3d9_set_viewports(d3d->dev, &screen_vp);
   d3d9_clear(d3d->dev, 0, 0, D3DCLEAR_TARGET, 0, 1, 0);



   if (video_info->black_frame_insertion)
   {
      if (!d3d9_swap(d3d, d3d->dev) || d3d->needs_restore)
         return 1;
      d3d9_clear(d3d->dev, 0, 0, D3DCLEAR_TARGET, 0, 1, 0);
   }

   if (!d3d->renderchain_driver->render(
            d3d, video_info,
            frame, frame_width, frame_height,
            pitch, d3d->dev_rotation))
   {
      RARCH_ERR("[D3D9]: Failed to render scene.\n");
      return 0;
   }
   if (msg && *msg)
   {
      d3d9_set_viewports(d3d->dev, &screen_vp);
      d3d9_begin_scene(d3d->dev);
      font_driver_render_msg(video_info, ((void*)0), msg, ((void*)0));
      d3d9_end_scene(d3d->dev);
   }

   d3d9_update_title(video_info);
   d3d9_swap(d3d, d3d->dev);

   return 1;
}
