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
struct video_shader {int dummy; } ;
typedef  enum auto_shader_type { ____Placeholder_auto_shader_type } auto_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_SHADER_OP_SAVE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct video_shader const*,int,int) ; 

bool FUNC1(const struct video_shader *shader,
      enum auto_shader_type type, bool apply)
{
   return FUNC0(
         AUTO_SHADER_OP_SAVE, shader, type, apply);
}