
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int is_threaded; } ;
typedef TYPE_2__ video_info_t ;
typedef int settings_t ;
struct TYPE_15__ {int size; int buffer; scalar_t__ offset; } ;
struct TYPE_17__ {int dev; int mvp_transposed; int mvp; TYPE_1__ menu_display; scalar_t__ needs_restore; } ;
typedef TYPE_3__ d3d8_video_t ;
typedef int Vertex ;
typedef int D3DPRESENT_PARAMETERS ;


 int D3DCULL_NONE ;
 int D3DFVF_DIFFUSE ;
 int D3DFVF_TEX1 ;
 int D3DFVF_XYZ ;
 int D3DPOOL_DEFAULT ;
 int D3DRS_CULLMODE ;
 int D3DUSAGE_WRITEONLY ;
 int FONT_DRIVER_RENDER_D3D8_API ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*) ;
 int RARCH_MENU_CTL_DEINIT ;
 int * config_get_ptr () ;
 int d3d8_deinitialize (TYPE_3__*) ;
 int d3d8_device_free (int *,int *) ;
 int d3d8_init_base (TYPE_3__*,TYPE_2__ const*) ;
 int d3d8_init_chain (TYPE_3__*,TYPE_2__ const*) ;
 int d3d8_make_d3dpp (TYPE_3__*,TYPE_2__ const*,int *) ;
 int d3d8_reset (int ,int *) ;
 int d3d8_set_render_state (int ,int ,int ) ;
 int d3d8_set_viewport (TYPE_3__*,unsigned int,unsigned int,int,int) ;
 int d3d8_vertex_buffer_new (int ,int,int ,int,int ,int *) ;
 int d3d_matrix_ortho_off_center_lh (int *,int ,int,int ,int,int ,int) ;
 int d3d_matrix_transpose (int *,int *) ;
 int font_driver_init_osd (TYPE_3__*,int,int ,int ) ;
 int * g_pD3D8 ;
 int menu_driver_ctl (int ,int *) ;
 int menu_driver_init (int ) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static bool d3d8_initialize(d3d8_video_t *d3d, const video_info_t *info)
{
   unsigned width, height;
   bool ret = 1;
   settings_t *settings = config_get_ptr();

   if (!d3d)
      return 0;

   if (!g_pD3D8)
      ret = d3d8_init_base(d3d, info);
   else if (d3d->needs_restore)
   {
      D3DPRESENT_PARAMETERS d3dpp;

      d3d8_make_d3dpp(d3d, info, &d3dpp);
      if (!d3d8_reset(d3d->dev, &d3dpp))
      {
         d3d8_deinitialize(d3d);
         d3d8_device_free(((void*)0), g_pD3D8);
         g_pD3D8 = ((void*)0);

         ret = d3d8_init_base(d3d, info);
         if (ret)
            RARCH_LOG("[D3D8]: Recovered from dead state.\n");
      }




   }

   if (!ret)
      return ret;

   if (!d3d8_init_chain(d3d, info))
   {
      RARCH_ERR("[D3D8]: Failed to initialize render chain.\n");
      return 0;
   }

   video_driver_get_size(&width, &height);
   d3d8_set_viewport(d3d,
    width, height, 0, 1);

   font_driver_init_osd(d3d, 0,
         info->is_threaded,
         FONT_DRIVER_RENDER_D3D8_API);

   d3d->menu_display.offset = 0;
   d3d->menu_display.size = 1024;
   d3d->menu_display.buffer = d3d8_vertex_buffer_new(
         d3d->dev, d3d->menu_display.size * sizeof(Vertex),
         D3DUSAGE_WRITEONLY,
         D3DFVF_XYZ | D3DFVF_TEX1 | D3DFVF_DIFFUSE,
         D3DPOOL_DEFAULT,
         ((void*)0));

   if (!d3d->menu_display.buffer)
      return 0;

   d3d_matrix_ortho_off_center_lh(&d3d->mvp_transposed, 0, 1, 0, 1, 0, 1);
   d3d_matrix_transpose(&d3d->mvp, &d3d->mvp_transposed);

   d3d8_set_render_state(d3d->dev, D3DRS_CULLMODE, D3DCULL_NONE);

   return 1;
}
