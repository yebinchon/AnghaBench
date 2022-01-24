#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int clearVRAM; int /*<<< orphan*/  gsGlobal; scalar_t__ vsync; } ;
typedef  TYPE_1__ ps2_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ps2_video_t *ps2)
{
   if (ps2->vsync) {
      FUNC1(ps2->gsGlobal);
   }
   FUNC0(ps2->gsGlobal);

   /* Here we are just puting in false the ps2->clearVRAM field
      however, the ps2->clearVRAM_font should be done in the ps2_font driver */
   ps2->clearVRAM = false;
}