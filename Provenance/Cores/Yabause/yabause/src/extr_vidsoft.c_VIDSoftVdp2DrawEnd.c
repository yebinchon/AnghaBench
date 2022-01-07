
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * draw_finished; } ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLE_STRIP ;
 int GL_UNSIGNED_BYTE ;
 int OSDDisplayMessages (int *,int,int) ;
 scalar_t__ OSDUseBuffer () ;
 size_t TITAN_NBG0 ;
 size_t TITAN_NBG1 ;
 size_t TITAN_NBG2 ;
 size_t TITAN_NBG3 ;
 size_t TITAN_RBG0 ;
 size_t TITAN_SPRITE ;
 int TitanRender (int *) ;
 int VIDSoftVdp1SwapFrameBuffer () ;
 int YuiSwapBuffers () ;
 int * dispbuffer ;
 int glClear (int ) ;
 int glClearColor (float,float,float,float) ;
 int glDrawArrays (int ,int ,int) ;
 int glTexImage2D (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int vdp2height ;
 int vdp2width ;
 scalar_t__ vidsoft_num_layer_threads ;
 TYPE_1__ vidsoft_thread_context ;

void VIDSoftVdp2DrawEnd(void)
{
   if (vidsoft_num_layer_threads > 0)
   {
      while (!vidsoft_thread_context.draw_finished[TITAN_NBG0]){}
      while (!vidsoft_thread_context.draw_finished[TITAN_NBG1]){}
      while (!vidsoft_thread_context.draw_finished[TITAN_NBG2]){}
      while (!vidsoft_thread_context.draw_finished[TITAN_NBG3]){}
      while (!vidsoft_thread_context.draw_finished[TITAN_RBG0]){}
      while (!vidsoft_thread_context.draw_finished[TITAN_SPRITE]){}
   }

   TitanRender(dispbuffer);

   VIDSoftVdp1SwapFrameBuffer();

   if (OSDUseBuffer())
      OSDDisplayMessages(dispbuffer, vdp2width, vdp2height);
   YuiSwapBuffers();
}
