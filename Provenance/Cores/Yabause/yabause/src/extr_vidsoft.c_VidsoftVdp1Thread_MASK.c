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
struct TYPE_2__ {int draw_finished; int /*<<< orphan*/  back_framebuffer; int /*<<< orphan*/  regs; int /*<<< orphan*/  ram; scalar_t__ need_draw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vdp1backframebuffer ; 
 TYPE_1__ vidsoft_vdp1_thread_context ; 

void FUNC3(void* data)
{
   for (;;)
   {
      if (vidsoft_vdp1_thread_context.need_draw)
      {
         vidsoft_vdp1_thread_context.need_draw = 0;
         FUNC0(vidsoft_vdp1_thread_context.ram, &vidsoft_vdp1_thread_context.regs, vidsoft_vdp1_thread_context.back_framebuffer);
         FUNC2(vdp1backframebuffer, vidsoft_vdp1_thread_context.back_framebuffer, 0x40000);
         vidsoft_vdp1_thread_context.draw_finished = 1;
      }

      FUNC1();
   }
}