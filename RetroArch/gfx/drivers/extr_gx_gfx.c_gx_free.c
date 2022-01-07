
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gx_video_t ;


 int GX_AbortFrame () ;
 int GX_DrawDone () ;
 int GX_Flush () ;
 int OSCloseThreadQueue (scalar_t__) ;
 int VIDEO_Flush () ;
 int VIDEO_SetBlack (int) ;
 int VIDEO_WaitVSync () ;
 int free (void*) ;
 scalar_t__ g_video_cond ;
 int gx_free_overlay (int *) ;

__attribute__((used)) static void gx_free(void *data)
{






   GX_DrawDone();
   GX_AbortFrame();
   GX_Flush();
   VIDEO_SetBlack(1);
   VIDEO_Flush();
   VIDEO_WaitVSync();

   if (g_video_cond)
      OSCloseThreadQueue(g_video_cond);
   g_video_cond = 0;

   free(data);
}
