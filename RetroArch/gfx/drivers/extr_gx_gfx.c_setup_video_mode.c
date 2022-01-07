
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * framebuf; } ;
typedef TYPE_1__ gx_video_t ;


 int MEM_K0_TO_K1 (int ) ;
 int ORIENTATION_NORMAL ;
 int OSInitThreadQueue (int *) ;
 int VI_DISPLAY_PIX_SZ ;
 int g_orientation ;
 int g_video_cond ;
 int gx_get_video_output_size (TYPE_1__*,unsigned int*,unsigned int*) ;
 int gx_set_video_mode (TYPE_1__*,unsigned int,unsigned int,int) ;
 int memalign (int,int) ;

__attribute__((used)) static void setup_video_mode(gx_video_t *gx)
{
   unsigned width, height;

   if (!gx->framebuf[0])
   {
      unsigned i;
      for (i = 0; i < 2; i++)
         gx->framebuf[i] = MEM_K0_TO_K1(
               memalign(32, 640 * 576 * VI_DISPLAY_PIX_SZ));
   }

   g_orientation = ORIENTATION_NORMAL;
   OSInitThreadQueue(&g_video_cond);

   gx_get_video_output_size(gx, &width, &height);
   gx_set_video_mode(gx, width, height, 1);
}
