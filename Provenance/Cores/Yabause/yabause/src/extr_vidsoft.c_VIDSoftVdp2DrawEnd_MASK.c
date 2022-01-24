#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * draw_finished; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 () ; 
 size_t TITAN_NBG0 ; 
 size_t TITAN_NBG1 ; 
 size_t TITAN_NBG2 ; 
 size_t TITAN_NBG3 ; 
 size_t TITAN_RBG0 ; 
 size_t TITAN_SPRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * dispbuffer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int vdp2height ; 
 int vdp2width ; 
 scalar_t__ vidsoft_num_layer_threads ; 
 TYPE_1__ vidsoft_thread_context ; 

void FUNC9(void)
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

   FUNC2(dispbuffer);

   FUNC3();

   if (FUNC1())
      FUNC0(dispbuffer, vdp2width, vdp2height);

#ifdef USE_OPENGL
   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, vdp2width, vdp2height, 0, GL_RGBA, GL_UNSIGNED_BYTE, dispbuffer);
   glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
   glClear(GL_COLOR_BUFFER_BIT);
   glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

   if (! OSDUseBuffer())
      OSDDisplayMessages(NULL, -1, -1);
#endif

   FUNC4();
}