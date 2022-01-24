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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int g_draw_done ; 
 int /*<<< orphan*/  g_video_cond ; 
 int /*<<< orphan*/  retraceCount ; 

__attribute__((used)) static void FUNC3(u32 retrace_count)
{
   uint32_t level = 0;

   (void)retrace_count;

   g_draw_done = true;
   FUNC0(g_video_cond);
   FUNC1(level);
   retraceCount = retrace_count;
   FUNC2(level);
}