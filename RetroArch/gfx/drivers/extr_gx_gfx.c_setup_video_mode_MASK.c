#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * framebuf; } ;
typedef  TYPE_1__ gx_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ORIENTATION_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int VI_DISPLAY_PIX_SZ ; 
 int /*<<< orphan*/  g_orientation ; 
 int /*<<< orphan*/  g_video_cond ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(gx_video_t *gx)
{
   unsigned width, height;

   if (!gx->framebuf[0])
   {
      unsigned i;
      for (i = 0; i < 2; i++)
         gx->framebuf[i] = FUNC0(
               FUNC4(32, 640 * 576 * VI_DISPLAY_PIX_SZ));
   }

   g_orientation      = ORIENTATION_NORMAL;
   FUNC1(&g_video_cond);

   FUNC2(gx, &width, &height);
   FUNC3(gx, width, height, true);
}