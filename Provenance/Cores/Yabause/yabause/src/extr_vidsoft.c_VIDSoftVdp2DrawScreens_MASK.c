#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_2__ ;
typedef  struct TYPE_42__   TYPE_1__ ;

/* Type definitions */
struct CellScrollData {int dummy; } ;
typedef  int /*<<< orphan*/  Vdp2 ;
struct TYPE_43__ {int PRINA; int PRINB; int PRIR; int SFPRMD; int /*<<< orphan*/  TVMD; } ;
struct TYPE_42__ {int* need_draw; scalar_t__* draw_finished; int /*<<< orphan*/ * cell_scroll_data; int /*<<< orphan*/ * color_ram; int /*<<< orphan*/ * ram; int /*<<< orphan*/  regs; int /*<<< orphan*/ * lines; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 size_t TITAN_NBG0 ; 
 size_t TITAN_NBG1 ; 
 size_t TITAN_NBG2 ; 
 size_t TITAN_NBG3 ; 
 size_t TITAN_RBG0 ; 
 size_t TITAN_SPRITE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Vdp1Regs ; 
 TYPE_2__* Vdp2ColorRam ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* Vdp2Lines ; 
 TYPE_2__* Vdp2Ram ; 
 TYPE_2__* Vdp2Regs ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int*,size_t,int /*<<< orphan*/  (*) (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*)) ; 
 int /*<<< orphan*/  YAB_THREAD_VIDSOFT_LAYER_SPRITE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* cell_scroll_data ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  sprite_window_mask ; 
 int /*<<< orphan*/  vdp1frontframebuffer ; 
 scalar_t__ vidsoft_num_layer_threads ; 
 TYPE_1__ vidsoft_thread_context ; 

void FUNC12(void)
{
   int draw_priority_0[6] = { 0 };
   int layer_priority[6] = { 0 };
   int num_threads_dispatched = 0;

   FUNC2(Vdp2Regs->TVMD);
   layer_priority[TITAN_NBG0] = Vdp2Regs->PRINA & 0x7;
   layer_priority[TITAN_NBG1] = ((Vdp2Regs->PRINA >> 8) & 0x7);
   layer_priority[TITAN_NBG2] = (Vdp2Regs->PRINB & 0x7);
   layer_priority[TITAN_NBG3] = ((Vdp2Regs->PRINB >> 8) & 0x7);
   layer_priority[TITAN_RBG0] = (Vdp2Regs->PRIR & 0x7);

   FUNC1();

   if (Vdp2Regs->SFPRMD & 0x3FF)
   {
      draw_priority_0[TITAN_NBG0] = (Vdp2Regs->SFPRMD >> 0) & 0x3;
      draw_priority_0[TITAN_NBG1] = (Vdp2Regs->SFPRMD >> 2) & 0x3;
      draw_priority_0[TITAN_NBG2] = (Vdp2Regs->SFPRMD >> 4) & 0x3;
      draw_priority_0[TITAN_NBG3] = (Vdp2Regs->SFPRMD >> 6) & 0x3;
      draw_priority_0[TITAN_RBG0] = (Vdp2Regs->SFPRMD >> 8) & 0x3;
   }

   if (vidsoft_num_layer_threads > 0)
   {
      FUNC11(vidsoft_thread_context.lines, Vdp2Lines, sizeof(Vdp2) * 270);
      FUNC11(&vidsoft_thread_context.regs, Vdp2Regs, sizeof(Vdp2));
      FUNC11(vidsoft_thread_context.ram, Vdp2Ram, 0x80000);
      FUNC11(vidsoft_thread_context.color_ram, Vdp2ColorRam, 0x1000);
      FUNC11(vidsoft_thread_context.cell_scroll_data, cell_scroll_data, sizeof(struct CellScrollData) * 270);
   }

   //draw vdp2 sprite layer on a thread if sprite window is not enabled
   if (FUNC0() && vidsoft_num_layer_threads > 0)
   {
      vidsoft_thread_context.need_draw[TITAN_SPRITE] = 1;
      vidsoft_thread_context.draw_finished[TITAN_SPRITE] = 0;
      FUNC10(YAB_THREAD_VIDSOFT_LAYER_SPRITE);
      num_threads_dispatched++;
   }
   else
   {
      FUNC8(Vdp2Regs, sprite_window_mask, vdp1frontframebuffer, Vdp2Ram, Vdp1Regs, Vdp2Lines, Vdp2ColorRam);
   }

   if (vidsoft_num_layer_threads > 0)
   {
      FUNC9(layer_priority, draw_priority_0, &num_threads_dispatched, TITAN_NBG0, Vdp2DrawNBG0);
      FUNC9(layer_priority, draw_priority_0, &num_threads_dispatched, TITAN_RBG0, Vdp2DrawRBG0);
      FUNC9(layer_priority, draw_priority_0, &num_threads_dispatched, TITAN_NBG1, Vdp2DrawNBG1);
      FUNC9(layer_priority, draw_priority_0, &num_threads_dispatched, TITAN_NBG2, Vdp2DrawNBG2);
      FUNC9(layer_priority, draw_priority_0, &num_threads_dispatched, TITAN_NBG3, Vdp2DrawNBG3);
   }
   else
   {
      FUNC3(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
      FUNC4(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
      FUNC5(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
      FUNC6(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
      FUNC7(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
   }
}