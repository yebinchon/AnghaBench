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
struct TYPE_2__ {void* menuTexture; void* coreTexture; int /*<<< orphan*/  gsGlobal; } ;
typedef  TYPE_1__ ps2_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_BLACK ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   ps2_video_t *ps2 = (ps2_video_t*)data;

   FUNC3(ps2->gsGlobal, GS_BLACK);
   FUNC5(ps2->gsGlobal);

   FUNC1();

   FUNC0(ps2->menuTexture);
   FUNC0(ps2->coreTexture);

   FUNC2(ps2->menuTexture);
   FUNC2(ps2->coreTexture);

   FUNC4(ps2->gsGlobal);

   FUNC2(data);
}