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
typedef  int /*<<< orphan*/  RASPITEX_STATE ;

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 float angle ; 
 scalar_t__ anim_step ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(RASPITEX_STATE *state)
{
   int rc = FUNC4(state);

   if (rc != 0)
      goto end;

   angle = 0.0f;
   anim_step = 0;

   FUNC1(0, 0, 0, 0);
   FUNC2(1);
   FUNC0(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   FUNC3();

end:
   return rc;
}