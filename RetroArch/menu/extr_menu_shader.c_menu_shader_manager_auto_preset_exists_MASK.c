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
typedef  enum auto_shader_type { ____Placeholder_auto_shader_type } auto_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_SHADER_OP_EXISTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

bool FUNC1(enum auto_shader_type type)
{
   return FUNC0(
         AUTO_SHADER_OP_EXISTS, NULL, type, false);
}