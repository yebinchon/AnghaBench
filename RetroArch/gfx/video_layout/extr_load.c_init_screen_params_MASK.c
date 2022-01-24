#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  scope_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * video_layout_internal_screen_params ; 

__attribute__((used)) static void FUNC3(scope_t *scope, int screen_index)
{
   char buf[64];
   size_t i;

   for (i = 0; i < FUNC0(video_layout_internal_screen_params); i += 2)
   {
      FUNC2(buf, video_layout_internal_screen_params[i + 1]);
      buf[3] = '0' + screen_index;

      FUNC1(scope, video_layout_internal_screen_params[i], buf);
   }
}