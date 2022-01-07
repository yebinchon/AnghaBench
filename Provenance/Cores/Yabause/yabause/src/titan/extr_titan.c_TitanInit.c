
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct PixelData {int dummy; } ;
typedef struct PixelData u32 ;
struct TYPE_4__ {int* draw_finished; scalar_t__* need_draw; } ;
struct TYPE_3__ {int inited; struct PixelData** linescreen; struct PixelData** vdp2framebuffer; struct PixelData* backscreen; } ;


 int VidsoftPriorityThread0 ;
 int VidsoftPriorityThread1 ;
 int VidsoftPriorityThread2 ;
 int VidsoftPriorityThread3 ;
 int VidsoftPriorityThread4 ;
 int YAB_THREAD_VIDSOFT_PRIORITY_0 ;
 int YAB_THREAD_VIDSOFT_PRIORITY_1 ;
 int YAB_THREAD_VIDSOFT_PRIORITY_2 ;
 int YAB_THREAD_VIDSOFT_PRIORITY_3 ;
 int YAB_THREAD_VIDSOFT_PRIORITY_4 ;
 int YabThreadStart (int ,int ,int *) ;
 scalar_t__ calloc (int,int) ;
 int memset (struct PixelData*,int ,int) ;
 TYPE_2__ priority_thread_context ;
 TYPE_1__ tt_context ;

int TitanInit()
{
   int i;

   if (! tt_context.inited)
   {
      for(i = 0;i < 6;i++)
      {
         if ((tt_context.vdp2framebuffer[i] = (struct PixelData *)calloc(sizeof(struct PixelData), 704 * 256)) == ((void*)0))
            return -1;
      }


      for(i = 1;i < 4;i++)
      {
         if ((tt_context.linescreen[i] = (u32 *)calloc(sizeof(u32), 512)) == ((void*)0))
            return -1;
      }

      if ((tt_context.backscreen = (struct PixelData *)calloc(sizeof(struct PixelData), 704 * 512)) == ((void*)0))
         return -1;

      for (i = 0; i < 5; i++)
      {
         priority_thread_context.draw_finished[i] = 1;
         priority_thread_context.need_draw[i] = 0;
      }

      YabThreadStart(YAB_THREAD_VIDSOFT_PRIORITY_0, VidsoftPriorityThread0, ((void*)0));
      YabThreadStart(YAB_THREAD_VIDSOFT_PRIORITY_1, VidsoftPriorityThread1, ((void*)0));
      YabThreadStart(YAB_THREAD_VIDSOFT_PRIORITY_2, VidsoftPriorityThread2, ((void*)0));
      YabThreadStart(YAB_THREAD_VIDSOFT_PRIORITY_3, VidsoftPriorityThread3, ((void*)0));
      YabThreadStart(YAB_THREAD_VIDSOFT_PRIORITY_4, VidsoftPriorityThread4, ((void*)0));

      tt_context.inited = 1;
   }

   for(i = 0;i < 6;i++)
      memset(tt_context.vdp2framebuffer[i], 0, sizeof(u32) * 704 * 256);

   for(i = 1;i < 4;i++)
      memset(tt_context.linescreen[i], 0, sizeof(u32) * 512);

   return 0;
}
