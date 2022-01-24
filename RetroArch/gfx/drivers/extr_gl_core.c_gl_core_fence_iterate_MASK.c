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
struct TYPE_3__ {unsigned int fence_count; int /*<<< orphan*/ * fences; } ;
typedef  TYPE_1__ gl_core_t ;
typedef  int /*<<< orphan*/  GLsync ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 unsigned int GL_CORE_NUM_FENCES ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_SYNC_FLUSH_COMMANDS_BIT ; 
 int /*<<< orphan*/  GL_SYNC_GPU_COMMANDS_COMPLETE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(gl_core_t *gl, unsigned hard_sync_frames)
{
   if (gl->fence_count < GL_CORE_NUM_FENCES)
   {
      /*
       * We need to do some work after the flip, or we risk fencing too early.
       * Do as little work as possible.
       */
      FUNC5(GL_SCISSOR_TEST);
      FUNC7(0, 0, 1, 1);
      FUNC2(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
      FUNC0(GL_COLOR_BUFFER_BIT);
      FUNC4(GL_SCISSOR_TEST);

      gl->fences[gl->fence_count++] = FUNC6(GL_SYNC_GPU_COMMANDS_COMPLETE, 0);
   }

   while (gl->fence_count > hard_sync_frames)
   {
      FUNC1(gl->fences[0], GL_SYNC_FLUSH_COMMANDS_BIT, 1000000000);
      FUNC3(gl->fences[0]);
      gl->fence_count--;
      FUNC8(gl->fences, gl->fences + 1, gl->fence_count * sizeof(GLsync));
   }
}