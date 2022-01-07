
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_coords; int frame; int dList; } ;
struct TYPE_4__ {TYPE_1__ menu; int main_dList; } ;
typedef TYPE_2__ psp1_video_t ;


 int GU_ADD ;
 int GU_BLEND ;
 int GU_DIRECT ;
 int GU_FALSE ;
 int GU_FIX ;
 int GU_LINEAR ;
 int GU_ONE_MINUS_SRC_ALPHA ;
 int GU_PSM_4444 ;
 int GU_SEND ;
 int GU_SPRITES ;
 int GU_SRC_ALPHA ;
 int GU_TCC_RGB ;
 int GU_TEXTURE_32BITF ;
 int GU_TFX_REPLACE ;
 int GU_TRANSFORM_2D ;
 int GU_VERTEX_32BITF ;
 int PSP_FRAME_VERTEX_COUNT ;
 int SCEGU_SCR_HEIGHT ;
 int SCEGU_SCR_WIDTH ;
 int next_pow2 (unsigned int) ;
 int psp_set_screen_coords (int ,int ,int ,int ,int ,int ) ;
 int psp_set_tex_coords (int ,unsigned int,unsigned int) ;
 int retro_assert (int) ;
 int sceGuBlendFunc (int ,int ,int ,int,int) ;
 int sceGuCopyImage (int ,int ,int ,unsigned int,unsigned int,unsigned int,void*,int ,int ,unsigned int,int ) ;
 int sceGuDrawArray (int ,int,int ,int *,int ) ;
 int sceGuEnable (int ) ;
 int sceGuFinish () ;
 int sceGuStart (int ,int ) ;
 int sceGuTexFilter (int ,int ) ;
 int sceGuTexFunc (int ,int ) ;
 int sceGuTexImage (int ,int ,int ,unsigned int,int ) ;
 int sceGuTexMode (int ,int ,int ,int ) ;
 int sceKernelDcacheWritebackRange (void const*,unsigned int) ;

__attribute__((used)) static void psp_set_texture_frame(void *data, const void *frame, bool rgb32,
                               unsigned width, unsigned height, float alpha)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   (void) rgb32;
   (void) alpha;






   psp_set_screen_coords(psp->menu.frame_coords, 0, 0,
         SCEGU_SCR_WIDTH, SCEGU_SCR_HEIGHT, 0);
   psp_set_tex_coords(psp->menu.frame_coords, width, height);

   sceKernelDcacheWritebackRange(frame, width * height * 2);

   sceGuStart(GU_DIRECT, psp->main_dList);
   sceGuCopyImage(GU_PSM_4444, 0, 0, width, height, width,
         (void*)frame, 0, 0, width, psp->menu.frame);
   sceGuFinish();

   sceGuStart(GU_SEND, psp->menu.dList);
   sceGuTexMode(GU_PSM_4444, 0, 0, GU_FALSE);
   sceGuTexFunc(GU_TFX_REPLACE, GU_TCC_RGB);
   sceGuTexFilter(GU_LINEAR, GU_LINEAR);
   sceGuTexImage(0, next_pow2(width), next_pow2(height), width, psp->menu.frame);
   sceGuEnable(GU_BLEND);





   sceGuBlendFunc(GU_ADD, GU_FIX, GU_FIX, 0xF0F0F0F0, 0x0F0F0F0F);
;
   sceGuDrawArray(GU_SPRITES, GU_TEXTURE_32BITF | GU_VERTEX_32BITF |
         GU_TRANSFORM_2D, PSP_FRAME_VERTEX_COUNT, ((void*)0),
         psp->menu.frame_coords);
   sceGuFinish();

}
