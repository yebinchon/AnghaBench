
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int pixel_t ;
struct TYPE_4__ {int* draw_finished; scalar_t__* need_draw; } ;
struct TYPE_3__ {int draw_finished; scalar_t__ need_draw; } ;


 int TitanInit () ;
 int VIDSoftSetupGL () ;
 int VidsoftNbg0Thread ;
 int VidsoftNbg1Thread ;
 int VidsoftNbg2Thread ;
 int VidsoftNbg3Thread ;
 int VidsoftRbg0Thread ;
 int VidsoftSpriteThread ;
 int VidsoftVdp1Thread ;
 int YAB_THREAD_VIDSOFT_LAYER_NBG0 ;
 int YAB_THREAD_VIDSOFT_LAYER_NBG1 ;
 int YAB_THREAD_VIDSOFT_LAYER_NBG2 ;
 int YAB_THREAD_VIDSOFT_LAYER_NBG3 ;
 int YAB_THREAD_VIDSOFT_LAYER_RBG0 ;
 int YAB_THREAD_VIDSOFT_LAYER_SPRITE ;
 int YAB_THREAD_VIDSOFT_VDP1 ;
 int YabThreadStart (int ,int ,int ) ;
 scalar_t__ calloc (int,int) ;
 int * dispbuffer ;
 int rbg0width ;
 int * vdp1backframebuffer ;
 int ** vdp1framebuffer ;
 int * vdp1frontframebuffer ;
 int vdp2height ;
 int vdp2width ;
 TYPE_2__ vidsoft_thread_context ;
 TYPE_1__ vidsoft_vdp1_thread_context ;

int VIDSoftInit(void)
{
   int i;

   if (TitanInit() == -1)
      return -1;

   if ((dispbuffer = (pixel_t *)calloc(sizeof(pixel_t), 704 * 512)) == ((void*)0))
      return -1;


   if ((vdp1framebuffer[0] = (u8 *)calloc(sizeof(u8), 0x40000)) == ((void*)0))
      return -1;


   if ((vdp1framebuffer[1] = (u8 *)calloc(sizeof(u8), 0x40000)) == ((void*)0))
      return -1;

   vdp1backframebuffer = vdp1framebuffer[0];
   vdp1frontframebuffer = vdp1framebuffer[1];
   rbg0width = vdp2width = 320;
   vdp2height = 224;





   for (i = 0; i < 6; i++)
   {
      vidsoft_thread_context.draw_finished[i] = 1;
      vidsoft_thread_context.need_draw[i] = 0;
   }

   vidsoft_vdp1_thread_context.need_draw = 0;
   vidsoft_vdp1_thread_context.draw_finished = 1;
   YabThreadStart(YAB_THREAD_VIDSOFT_VDP1, VidsoftVdp1Thread, 0);

   YabThreadStart(YAB_THREAD_VIDSOFT_LAYER_RBG0, VidsoftRbg0Thread, 0);
   YabThreadStart(YAB_THREAD_VIDSOFT_LAYER_NBG0, VidsoftNbg0Thread, 0);
   YabThreadStart(YAB_THREAD_VIDSOFT_LAYER_NBG1, VidsoftNbg1Thread, 0);
   YabThreadStart(YAB_THREAD_VIDSOFT_LAYER_NBG2, VidsoftNbg2Thread, 0);
   YabThreadStart(YAB_THREAD_VIDSOFT_LAYER_NBG3, VidsoftNbg3Thread, 0);
   YabThreadStart(YAB_THREAD_VIDSOFT_LAYER_SPRITE, VidsoftSpriteThread, 0);

   return 0;
}
