#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* dList; void* frame; scalar_t__ frame_coords; } ;
struct TYPE_4__ {void* main_dList; void* frame_dList; TYPE_1__ menu; scalar_t__ frame_coords; } ;
typedef  TYPE_2__ psp1_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  GU_FALSE ; 
 int /*<<< orphan*/  PSP_VBLANK_INT ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *data)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   if(!(psp) || !(psp->main_dList))
      return;

   FUNC2();
   FUNC3(GU_FALSE);
   FUNC4();

   if (psp->main_dList)
      FUNC1(psp->main_dList);
   if (psp->frame_dList)
      FUNC1(psp->frame_dList);
   if (psp->frame_coords)
      FUNC1(FUNC0(psp->frame_coords));
   if (psp->menu.frame_coords)
      FUNC1(FUNC0(psp->menu.frame_coords));
   if (psp->menu.dList)
      FUNC1(psp->menu.dList);
   if (psp->menu.frame)
      FUNC1(psp->menu.frame);

   FUNC1(data);

   FUNC5(PSP_VBLANK_INT, 0);
   FUNC6(PSP_VBLANK_INT,0);
}