
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct TYPE_4__ {int context_storage; int dList; scalar_t__ active; } ;
struct TYPE_5__ {int hw_render; int vblank_not_reached; int bpp_log2; TYPE_1__ menu; int frame_dList; int texture; scalar_t__ rgb32; scalar_t__ frame_coords; int tex_filter; int main_dList; scalar_t__ should_resize; int draw_buffer; scalar_t__ vsync; } ;
typedef TYPE_2__ psp1_video_t ;


 int FROM_GU_POINTER (int ) ;
 int GU_COLOR_BUFFER_BIT ;
 int GU_DIRECT ;
 int GU_PSM_5650 ;
 int GU_PSM_8888 ;
 int GU_SPRITES ;
 int GU_TAIL ;
 int GU_TEXTURE_32BITF ;
 int GU_TRANSFORM_2D ;
 int GU_VERTEX_32BITF ;
 int PSP_FRAME_VERTEX_COUNT ;
 void const* RETRO_HW_FRAME_BUFFER_VALID ;
 int menu_driver_frame (int *) ;
 int next_pow2 (unsigned int) ;
 int pspDebugScreenPuts (char const*) ;
 int pspDebugScreenSetBase (int ) ;
 int pspDebugScreenSetXY (int ,int ) ;
 int psp_set_tex_coords (scalar_t__,unsigned int,unsigned int) ;
 int psp_update_viewport (TYPE_2__*,int *) ;
 int sceDisplayWaitVblankStart () ;
 int sceGuCallList (int ) ;
 int sceGuClear (int ) ;
 int sceGuCopyImage (int ,int,int ,unsigned int,unsigned int,unsigned int,void*,int ,int ,unsigned int,int ) ;
 int sceGuDrawArray (int ,int,int ,int *,void*) ;
 int sceGuFinish () ;
 int sceGuSendList (int ,int ,int *) ;
 int sceGuStart (int ,int ) ;
 int sceGuSwapBuffers () ;
 int sceGuSync (int ,int ) ;
 int sceGuTexFilter (int ,int ) ;
 int sceGuTexImage (int ,int ,int ,unsigned int,int ) ;
 int sceKernelDcacheWritebackRange (void const*,unsigned int) ;

__attribute__((used)) static bool psp_frame(void *data, const void *frame,
      unsigned width, unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   if (!width || !height)
      return 0;

   if (((uint32_t)frame&0x04000000) || (frame == RETRO_HW_FRAME_BUFFER_VALID))
      psp->hw_render = 1;
   else if (frame)
      psp->hw_render = 0;

   if (!psp->hw_render)
      sceGuSync(0, 0);

   if (msg)
   {
      pspDebugScreenSetBase(psp->draw_buffer);
      pspDebugScreenSetXY(0,0);
      pspDebugScreenPuts(msg);
   }


   if ((psp->vsync)&&(psp->vblank_not_reached))
      sceDisplayWaitVblankStart();

   psp->vblank_not_reached = 1;

   psp->draw_buffer = FROM_GU_POINTER(sceGuSwapBuffers());

   if (psp->should_resize)
      psp_update_viewport(psp, video_info);

   psp_set_tex_coords(psp->frame_coords, width, height);

   sceGuStart(GU_DIRECT, psp->main_dList);

   sceGuTexFilter(psp->tex_filter, psp->tex_filter);
   sceGuClear(GU_COLOR_BUFFER_BIT);



   if (psp->hw_render)
      sceGuDrawArray(GU_SPRITES, GU_TEXTURE_32BITF | GU_VERTEX_32BITF |
            GU_TRANSFORM_2D, PSP_FRAME_VERTEX_COUNT, ((void*)0),
            (void*)(psp->frame_coords));
   else
   {
      if (frame)
      {
         sceKernelDcacheWritebackRange(frame,pitch * height);
         sceGuCopyImage(psp->rgb32? GU_PSM_8888 : GU_PSM_5650, ((u32)frame & 0xF) >> psp->bpp_log2,
               0, width, height, pitch >> psp->bpp_log2,
               (void*)((u32)frame & ~0xF), 0, 0, width, psp->texture);
      }
      sceGuTexImage(0, next_pow2(width), next_pow2(height), width, psp->texture);
      sceGuCallList(psp->frame_dList);
   }

   sceGuFinish();





   if(psp->menu.active)
   {
      sceGuSendList(GU_TAIL, psp->menu.dList, &(psp->menu.context_storage));
      sceGuSync(0, 0);
   }

   return 1;
}
