#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* gl; } ;
typedef  TYPE_3__ gl_core_raster_t ;
struct TYPE_5__ {int /*<<< orphan*/  font; } ;
struct TYPE_6__ {TYPE_1__ pipelines; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_FUNC_ADD ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,int,int) ; 

__attribute__((used)) static void FUNC5(unsigned width, unsigned height,
      gl_core_raster_t *font, bool full_screen)
{
   FUNC4(width, height, full_screen, false);

   FUNC2(GL_BLEND);
   FUNC1(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   FUNC0(GL_FUNC_ADD);
   FUNC3(font->gl->pipelines.font);
}