
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int input_scale; int rgb32; } ;
typedef TYPE_1__ video_info_t ;
typedef int uint32_t ;
typedef int u8 ;
struct TYPE_6__ {int scale; int rgb32; int should_resize; } ;
typedef TYPE_2__ gx_video_t ;
struct TYPE_7__ {int width; int height; int data; } ;
typedef int Mtx44 ;


 int DCFlushRange (int ,int) ;
 int GX_AF_NONE ;
 int GX_ALWAYS ;
 int GX_BL_INVSRCALPHA ;
 int GX_BL_SRCALPHA ;
 int GX_BM_BLEND ;
 int GX_CLIP_DISABLE ;
 int GX_CLR_RGBA ;
 int GX_COLOR0A0 ;
 int GX_CULL_NONE ;
 int GX_ClearVtxDesc () ;
 int GX_DF_NONE ;
 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_F32 ;
 int GX_FALSE ;
 int GX_Flush () ;
 int GX_INDEX8 ;
 int GX_InvVtxCache () ;
 int GX_LIGHTNULL ;
 int GX_LO_CLEAR ;
 int GX_LoadProjectionMtx (int ,int ) ;
 int GX_MODULATE ;
 int GX_ORTHOGRAPHIC ;
 int GX_POS_XYZ ;
 int GX_RGBA8 ;
 int GX_SRC_REG ;
 int GX_SRC_VTX ;
 int GX_SetAlphaUpdate (int ) ;
 int GX_SetArray (int ,int ,int) ;
 int GX_SetBlendMode (int ,int ,int ,int ) ;
 int GX_SetChanCtrl (int ,int ,int ,int ,int ,int ,int ) ;
 int GX_SetClipMode (int ) ;
 int GX_SetColorUpdate (int ) ;
 int GX_SetCullMode (int ) ;
 int GX_SetNumChans (int) ;
 int GX_SetNumTexGens (int) ;
 int GX_SetTevOp (int ,int ) ;
 int GX_SetTevOrder (int ,int ,int ,int ) ;
 int GX_SetVtxAttrFmt (int ,int ,int ,int ,int ) ;
 int GX_SetVtxDesc (int ,int ) ;
 int GX_SetZMode (int ,int ,int ) ;
 int GX_TEVSTAGE0 ;
 int GX_TEXCOORD0 ;
 int GX_TEXMAP0 ;
 int GX_TEX_ST ;
 int GX_TRUE ;
 int GX_VA_CLR0 ;
 int GX_VA_POS ;
 int GX_VA_TEX0 ;
 int GX_VTXFMT0 ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*) ;
 int RARCH_SCALE_BASE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int color_ptr ;
 int exit (int) ;
 int free (int ) ;
 TYPE_4__ g_tex ;
 int guOrtho (int ,int,int,int,int,double,double) ;
 int init_texture (void*,int,int) ;
 int memalign (int,int) ;
 int referenceRetraceCount ;
 int retraceCount ;
 int vertex_ptr ;
 int verts ;

__attribute__((used)) static void init_vtx(void *data, const video_info_t *video)
{
   Mtx44 m;
   gx_video_t *gx = (gx_video_t*)data;
   uint32_t level = 0;
   _CPU_ISR_Disable(level);
   referenceRetraceCount = retraceCount;
   _CPU_ISR_Restore(level);

   GX_SetCullMode(GX_CULL_NONE);
   GX_SetClipMode(GX_CLIP_DISABLE);
   GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_ENABLE);
   GX_SetColorUpdate(GX_TRUE);
   GX_SetAlphaUpdate(GX_FALSE);

   guOrtho(m, 1, -1, -1, 1, 0.4, 0.6);
   GX_LoadProjectionMtx(m, GX_ORTHOGRAPHIC);

   GX_ClearVtxDesc();
   GX_SetVtxDesc(GX_VA_POS, GX_INDEX8);
   GX_SetVtxDesc(GX_VA_TEX0, GX_INDEX8);
   GX_SetVtxDesc(GX_VA_CLR0, GX_INDEX8);

   GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
   GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
   GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
   GX_SetArray(GX_VA_POS, verts, 3 * sizeof(float));
   GX_SetArray(GX_VA_TEX0, vertex_ptr, 2 * sizeof(float));
   GX_SetArray(GX_VA_CLR0, color_ptr, 4 * sizeof(u8));

   GX_SetNumTexGens(1);
   GX_SetNumChans(1);
   GX_SetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG,
         GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);
   GX_SetTevOp(GX_TEVSTAGE0, GX_MODULATE);
   GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
   GX_InvVtxCache();

   GX_SetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA,
         GX_BL_INVSRCALPHA, GX_LO_CLEAR);

   if (gx->scale != video->input_scale || gx->rgb32 != video->rgb32)
   {
      RARCH_LOG("[GX]: Reallocate texture.\n");
      free(g_tex.data);
      g_tex.data = memalign(32,
            RARCH_SCALE_BASE * RARCH_SCALE_BASE * video->input_scale *
            video->input_scale * (video->rgb32 ? 4 : 2));
      g_tex.width = g_tex.height = RARCH_SCALE_BASE * video->input_scale;

      if (!g_tex.data)
      {
         RARCH_ERR("[GX]: Error allocating video texture\n");
         exit(1);
      }
   }

   DCFlushRange(g_tex.data, (g_tex.width *
         g_tex.height * video->rgb32) ? 4 : 2);

   gx->rgb32 = video->rgb32;
   gx->scale = video->input_scale;
   gx->should_resize = 1;

   init_texture(data, g_tex.width, g_tex.height);
   GX_Flush();
}
