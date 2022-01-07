
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_7__ {int frame_coords; } ;
struct TYPE_5__ {int left; } ;
struct TYPE_6__ {TYPE_1__ top; } ;
struct TYPE_8__ {int p3d_event_pending; scalar_t__ video_mode; size_t current_buffer_top; scalar_t__ supports_parallax_disable; TYPE_3__ menu; TYPE_2__ drawbuffers; int shader; } ;
typedef TYPE_4__ ctr_video_t ;
typedef int ctr_vertex_t ;
typedef int Handle ;
typedef scalar_t__ APT_HookType ;


 scalar_t__ APTHOOK_ONRESTORE ;
 scalar_t__ APTHOOK_ONSUSPEND ;
 int CFGU_GetModelNintendo2DS (scalar_t__*) ;
 int CTRGU_ATTRIBFMT (int ,int) ;
 int CTR_TOP_FRAMEBUFFER_HEIGHT ;
 int CTR_TOP_FRAMEBUFFER_WIDTH ;
 scalar_t__ CTR_VIDEO_MODE_2D_400x240 ;
 int GPUCMD_AddMaskedWrite (int ,int,int ) ;
 int GPUCMD_AddWrite (int ,int ) ;
 int GPUCMD_SetBufferOffset (int ) ;
 int GPUREG_EARLYDEPTH_TEST1 ;
 int GPUREG_EARLYDEPTH_TEST2 ;
 int GPU_ALWAYS ;
 int GPU_BLEND_ADD ;
 int GPU_CULL_NONE ;
 int GPU_DepthMap (float,float) ;
 int GPU_Finalize () ;
 int GPU_ONE_MINUS_SRC_ALPHA ;
 int GPU_PREVIOUS ;
 int GPU_REPLACE ;
 int GPU_SHORT ;
 int GPU_SRC_ALPHA ;
 int GPU_STENCIL_KEEP ;
 int GPU_SetAlphaBlending (int ,int ,int ,int ,int ,int ) ;
 int GPU_SetAlphaTest (int,int ,int) ;
 int GPU_SetBlendingColor (int ,int ,int ,int ) ;
 int GPU_SetDepthTestAndWriteMask (int,int ,int ) ;
 int GPU_SetFaceCulling (int ) ;
 int GPU_SetStencilOp (int ,int ,int ) ;
 int GPU_SetStencilTest (int,int ,int,int,int) ;
 int GPU_SetTexEnv (int,int ,int ,int ,int ,int ,int ,int ) ;
 int GPU_SetTextureEnable (int ) ;
 int GPU_SetViewport (int *,int ,int ,int ,int ,int ) ;
 int GPU_TEXTURE0 ;
 int GPU_TEXUNIT0 ;
 int GPU_WRITE_COLOR ;
 int GSPGPU_EVENT_P3D ;
 int GSPGPU_FlushDataCache (int ,int) ;
 int VIRT_TO_PHYS (int ) ;
 int ctrGuFlushAndRun (int) ;
 int ctrGuSetAttributeBuffers (int,int ,int,int) ;
 scalar_t__ ctr_bottom_screen_enabled ;
 int ctr_set_parallax_layer (int) ;
 int* getThreadCommandBuffer () ;
 int * gfxTopLeftFramebuffers ;
 int * gfxTopRightFramebuffers ;
 int gspWaitForEvent (int ,int) ;
 int memcpy (int ,int ,int) ;
 int shaderProgramUse (int *) ;
 scalar_t__ srvGetServiceHandle (int *,char*) ;
 int svcCloseHandle (int ) ;
 int svcSendSyncRequest (int ) ;

__attribute__((used)) static void ctr_lcd_aptHook(APT_HookType hook, void* param)
{
   ctr_video_t *ctr = (ctr_video_t*)param;

   if(!ctr)
      return;

   if(hook == APTHOOK_ONRESTORE)
   {
      GPUCMD_SetBufferOffset(0);
      shaderProgramUse(&ctr->shader);

      GPU_SetViewport(((void*)0),
                      VIRT_TO_PHYS(ctr->drawbuffers.top.left),
                      0, 0, CTR_TOP_FRAMEBUFFER_HEIGHT, CTR_TOP_FRAMEBUFFER_WIDTH);

      GPU_DepthMap(-1.0f, 0.0f);
      GPU_SetFaceCulling(GPU_CULL_NONE);
      GPU_SetStencilTest(0, GPU_ALWAYS, 0x00, 0xFF, 0x00);
      GPU_SetStencilOp(GPU_STENCIL_KEEP, GPU_STENCIL_KEEP, GPU_STENCIL_KEEP);
      GPU_SetBlendingColor(0, 0, 0, 0);
      GPU_SetDepthTestAndWriteMask(0, GPU_ALWAYS, GPU_WRITE_COLOR);
      GPUCMD_AddMaskedWrite(GPUREG_EARLYDEPTH_TEST1, 0x1, 0);
      GPUCMD_AddWrite(GPUREG_EARLYDEPTH_TEST2, 0);
      GPU_SetAlphaBlending(GPU_BLEND_ADD, GPU_BLEND_ADD,
                           GPU_SRC_ALPHA, GPU_ONE_MINUS_SRC_ALPHA,
                           GPU_SRC_ALPHA, GPU_ONE_MINUS_SRC_ALPHA);
      GPU_SetAlphaTest(0, GPU_ALWAYS, 0x00);
      GPU_SetTextureEnable(GPU_TEXUNIT0);
      GPU_SetTexEnv(0, GPU_TEXTURE0, GPU_TEXTURE0, 0, 0, GPU_REPLACE, GPU_REPLACE, 0);
      GPU_SetTexEnv(1, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      GPU_SetTexEnv(2, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      GPU_SetTexEnv(3, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      GPU_SetTexEnv(4, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      GPU_SetTexEnv(5, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      ctrGuSetAttributeBuffers(2,
                               VIRT_TO_PHYS(ctr->menu.frame_coords),
                               CTRGU_ATTRIBFMT(GPU_SHORT, 4) << 0 |
                               CTRGU_ATTRIBFMT(GPU_SHORT, 4) << 4,
                               sizeof(ctr_vertex_t));
      GPU_Finalize();
      ctrGuFlushAndRun(1);
      gspWaitForEvent(GSPGPU_EVENT_P3D, 0);
      ctr->p3d_event_pending = 0;
   }

   if((hook == APTHOOK_ONSUSPEND) && (ctr->video_mode == CTR_VIDEO_MODE_2D_400x240))
   {
      memcpy(gfxTopRightFramebuffers[ctr->current_buffer_top],
            gfxTopLeftFramebuffers[ctr->current_buffer_top],
            400 * 240 * 3);
      GSPGPU_FlushDataCache(gfxTopRightFramebuffers[ctr->current_buffer_top], 400 * 240 * 3);
   }

   if ((hook == APTHOOK_ONSUSPEND) && ctr->supports_parallax_disable)
      ctr_set_parallax_layer(*(float*)0x1FF81080 != 0.0);

   if((hook == APTHOOK_ONSUSPEND) || (hook == APTHOOK_ONRESTORE))
   {
      Handle lcd_handle;
      u8 not_2DS;
      CFGU_GetModelNintendo2DS(&not_2DS);
      if(not_2DS && srvGetServiceHandle(&lcd_handle, "gsp::Lcd") >= 0)
      {
         u32 *cmdbuf = getThreadCommandBuffer();
         cmdbuf[0] = ((hook == APTHOOK_ONSUSPEND) || ctr_bottom_screen_enabled)? 0x00110040: 0x00120040;
         cmdbuf[1] = 2;
         svcSendSyncRequest(lcd_handle);
         svcCloseHandle(lcd_handle);
      }
   }
}
