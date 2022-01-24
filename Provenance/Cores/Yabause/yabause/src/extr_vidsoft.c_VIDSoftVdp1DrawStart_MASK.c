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
typedef  int /*<<< orphan*/  Vdp1 ;
struct TYPE_2__ {int need_draw; scalar_t__ draw_finished; int /*<<< orphan*/ * back_framebuffer; int /*<<< orphan*/  regs; int /*<<< orphan*/ * ram; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Vdp1Ram ; 
 int /*<<< orphan*/ * Vdp1Regs ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  YAB_THREAD_VIDSOFT_VDP1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * vdp1backframebuffer ; 
 TYPE_1__ vidsoft_vdp1_thread_context ; 
 scalar_t__ vidsoft_vdp1_thread_enabled ; 

void FUNC6()
{
   if (vidsoft_vdp1_thread_enabled)
   {
      FUNC3();

      //take a snapshot of the vdp1 state, to be used by the thread
      FUNC5(vidsoft_vdp1_thread_context.ram, Vdp1Ram, 0x80000);
      FUNC5(&vidsoft_vdp1_thread_context.regs, Vdp1Regs, sizeof(Vdp1));
      FUNC5(vidsoft_vdp1_thread_context.back_framebuffer, vdp1backframebuffer, 0x40000);

      FUNC0(&vidsoft_vdp1_thread_context.regs, vidsoft_vdp1_thread_context.back_framebuffer);

      //start thread
      vidsoft_vdp1_thread_context.draw_finished = 0;
      vidsoft_vdp1_thread_context.need_draw = 1;
      FUNC4(YAB_THREAD_VIDSOFT_VDP1);

      FUNC2(Vdp1Ram, Vdp1Regs);
   }
   else
   {
      FUNC0(Vdp1Regs, vdp1backframebuffer);
      FUNC1(Vdp1Ram, Vdp1Regs, vdp1backframebuffer);
   }
}