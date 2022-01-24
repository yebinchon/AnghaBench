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
struct video_shader {scalar_t__ passes; } ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int RARCH_SHADER_NONE ; 
 int FUNC0 (struct video_shader*) ; 
 int /*<<< orphan*/  FUNC1 (struct video_shader*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

void FUNC3(struct video_shader *shader)
{
   enum rarch_shader_type type = RARCH_SHADER_NONE;

   if (!shader)
      return;

   type = FUNC0(shader);

   if (shader->passes && type != RARCH_SHADER_NONE)
   {
      FUNC1(shader, NULL, true);
      return;
   }

   FUNC2(NULL, type, NULL, true);
}