#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int input_scale; int rgb32; } ;
typedef  TYPE_1__ video_info_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int scale; int rgb32; int should_resize; } ;
typedef  TYPE_2__ gx_video_t ;
struct TYPE_7__ {int width; int height; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  Mtx44 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GX_AF_NONE ; 
 int /*<<< orphan*/  GX_ALWAYS ; 
 int /*<<< orphan*/  GX_BL_INVSRCALPHA ; 
 int /*<<< orphan*/  GX_BL_SRCALPHA ; 
 int /*<<< orphan*/  GX_BM_BLEND ; 
 int /*<<< orphan*/  GX_CLIP_DISABLE ; 
 int /*<<< orphan*/  GX_CLR_RGBA ; 
 int /*<<< orphan*/  GX_COLOR0A0 ; 
 int /*<<< orphan*/  GX_CULL_NONE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  GX_DF_NONE ; 
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  GX_F32 ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GX_INDEX8 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  GX_LIGHTNULL ; 
 int /*<<< orphan*/  GX_LO_CLEAR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_MODULATE ; 
 int /*<<< orphan*/  GX_ORTHOGRAPHIC ; 
 int /*<<< orphan*/  GX_POS_XYZ ; 
 int /*<<< orphan*/  GX_RGBA8 ; 
 int /*<<< orphan*/  GX_SRC_REG ; 
 int /*<<< orphan*/  GX_SRC_VTX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_TEVSTAGE0 ; 
 int /*<<< orphan*/  GX_TEXCOORD0 ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TEX_ST ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  GX_VA_CLR0 ; 
 int /*<<< orphan*/  GX_VA_POS ; 
 int /*<<< orphan*/  GX_VA_TEX0 ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int RARCH_SCALE_BASE ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  color_ptr ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 TYPE_4__ g_tex ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,int,int,int,double,double) ; 
 int /*<<< orphan*/  FUNC26 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int,int) ; 
 int /*<<< orphan*/  referenceRetraceCount ; 
 int /*<<< orphan*/  retraceCount ; 
 int /*<<< orphan*/  vertex_ptr ; 
 int /*<<< orphan*/  verts ; 

__attribute__((used)) static void FUNC28(void *data, const video_info_t *video)
{
   Mtx44 m;
   gx_video_t *gx      = (gx_video_t*)data;
   uint32_t level      = 0;
   FUNC21(level);
   referenceRetraceCount = retraceCount;
   FUNC22(level);

   FUNC11(GX_CULL_NONE);
   FUNC9(GX_CLIP_DISABLE);
   FUNC18(GX_ENABLE, GX_ALWAYS, GX_ENABLE);
   FUNC10(GX_TRUE);
   FUNC5(GX_FALSE);

   FUNC25(m, 1, -1, -1, 1, 0.4, 0.6);
   FUNC4(m, GX_ORTHOGRAPHIC);

   FUNC1();
   FUNC17(GX_VA_POS, GX_INDEX8);
   FUNC17(GX_VA_TEX0, GX_INDEX8);
   FUNC17(GX_VA_CLR0, GX_INDEX8);

   FUNC16(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
   FUNC16(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
   FUNC16(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
   FUNC6(GX_VA_POS, verts, 3 * sizeof(float));
   FUNC6(GX_VA_TEX0, vertex_ptr, 2 * sizeof(float));
   FUNC6(GX_VA_CLR0, color_ptr, 4 * sizeof(u8));

   FUNC13(1);
   FUNC12(1);
   FUNC8(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG,
         GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);
   FUNC14(GX_TEVSTAGE0, GX_MODULATE);
   FUNC15(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
   FUNC3();

   FUNC7(GX_BM_BLEND, GX_BL_SRCALPHA,
         GX_BL_INVSRCALPHA, GX_LO_CLEAR);

   if (gx->scale != video->input_scale || gx->rgb32 != video->rgb32)
   {
      FUNC20("[GX]: Reallocate texture.\n");
      FUNC24(g_tex.data);
      g_tex.data = FUNC27(32,
            RARCH_SCALE_BASE * RARCH_SCALE_BASE * video->input_scale *
            video->input_scale * (video->rgb32 ? 4 : 2));
      g_tex.width = g_tex.height = RARCH_SCALE_BASE * video->input_scale;

      if (!g_tex.data)
      {
         FUNC19("[GX]: Error allocating video texture\n");
         FUNC23(1);
      }
   }

   FUNC0(g_tex.data, (g_tex.width *
         g_tex.height * video->rgb32) ? 4 : 2);

   gx->rgb32 = video->rgb32;
   gx->scale = video->input_scale;
   gx->should_resize = true;

   FUNC26(data, g_tex.width, g_tex.height);
   FUNC2();
}