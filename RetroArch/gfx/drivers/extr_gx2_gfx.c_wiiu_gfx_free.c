
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_23__ {int image; } ;
struct TYPE_15__ {TYPE_8__ surface; } ;
struct TYPE_22__ {int v; } ;
struct TYPE_21__ {int v; } ;
struct TYPE_18__ {int image; } ;
struct TYPE_19__ {TYPE_3__ surface; } ;
struct TYPE_20__ {int v; TYPE_4__ texture; } ;
struct TYPE_16__ {int image; } ;
struct TYPE_17__ {TYPE_1__ surface; } ;
struct TYPE_24__ {int drc_scan_buffer; int tv_scan_buffer; int output_ring_buffer; int input_ring_buffer; int ubo_mvp; int ubo_tex; int ubo_vp; TYPE_13__ color_buffer; int menu_shader_ubo; int menu_shader_vbo; TYPE_7__ vertex_cache_tex; TYPE_6__ vertex_cache; TYPE_5__ menu; int v; TYPE_2__ texture; int cmd_buffer; int ctx_state; } ;
typedef TYPE_9__ wiiu_video_t ;


 int GX2ClearColor (TYPE_13__*,float,float,float,float) ;
 int GX2CopyColorBufferToScanBuffer (TYPE_13__*,int ) ;
 int GX2DestroyShader (int *) ;
 int GX2DrawDone () ;
 int GX2Flush () ;
 int GX2SetDRCEnable (int ) ;
 int GX2SetTVEnable (int ) ;
 int GX2Shutdown () ;
 int GX2SwapScanBuffers () ;
 int GX2WaitForVsync () ;
 int GX2_DISABLE ;
 int GX2_SCAN_TARGET_DRC ;
 int GX2_SCAN_TARGET_TV ;
 int MEM1_free (int ) ;
 int MEM2_free (int ) ;
 int MEMBucket_free (int ) ;
 int bokeh_shader ;
 int frame_shader ;
 int free (TYPE_9__*) ;
 int gx2_free_overlay (TYPE_9__*) ;
 int ribbon_shader ;
 int ribbon_simple_shader ;
 int snow_shader ;
 int snow_simple_shader ;
 int snowflake_shader ;
 int sprite_shader ;
 int tex_shader ;
 int wiiu_free_shader_preset (TYPE_9__*) ;

__attribute__((used)) static void wiiu_gfx_free(void *data)
{
   wiiu_video_t *wiiu = (wiiu_video_t *) data;

   if (!wiiu)
      return;


   GX2ClearColor(&wiiu->color_buffer, 0.0f, 0.0f, 0.0f, 1.0f);
   GX2CopyColorBufferToScanBuffer(&wiiu->color_buffer, GX2_SCAN_TARGET_DRC);
   GX2CopyColorBufferToScanBuffer(&wiiu->color_buffer, GX2_SCAN_TARGET_TV);

   GX2SwapScanBuffers();
   GX2Flush();
   GX2DrawDone();
   GX2WaitForVsync();
   GX2Shutdown();

   GX2SetTVEnable(GX2_DISABLE);
   GX2SetDRCEnable(GX2_DISABLE);

   GX2DestroyShader(&frame_shader);
   GX2DestroyShader(&tex_shader);
   GX2DestroyShader(&sprite_shader);
   GX2DestroyShader(&ribbon_simple_shader);
   GX2DestroyShader(&ribbon_shader);
   GX2DestroyShader(&bokeh_shader);
   GX2DestroyShader(&snow_shader);
   GX2DestroyShader(&snow_simple_shader);
   GX2DestroyShader(&snowflake_shader);

   wiiu_free_shader_preset(wiiu);





   MEM2_free(wiiu->ctx_state);
   MEM2_free(wiiu->cmd_buffer);
   MEM2_free(wiiu->texture.surface.image);
   MEM2_free(wiiu->menu.texture.surface.image);
   MEM2_free(wiiu->v);
   MEM2_free(wiiu->menu.v);
   MEM2_free(wiiu->vertex_cache.v);
   MEM2_free(wiiu->vertex_cache_tex.v);
   MEM2_free(wiiu->menu_shader_vbo);
   MEM2_free(wiiu->menu_shader_ubo);

   MEM1_free(wiiu->color_buffer.surface.image);
   MEM1_free(wiiu->ubo_vp);
   MEM1_free(wiiu->ubo_tex);
   MEM1_free(wiiu->ubo_mvp);
   MEM1_free(wiiu->input_ring_buffer);
   MEM1_free(wiiu->output_ring_buffer);

   MEMBucket_free(wiiu->tv_scan_buffer);
   MEMBucket_free(wiiu->drc_scan_buffer);

   free(wiiu);
}
