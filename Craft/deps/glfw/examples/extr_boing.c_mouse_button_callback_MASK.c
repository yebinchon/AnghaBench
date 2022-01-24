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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int GLFW_MOUSE_BUTTON_LEFT ; 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  cursor_x ; 
 int /*<<< orphan*/  cursor_y ; 
 int /*<<< orphan*/  override_pos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1( GLFWwindow* window, int button, int action, int mods )
{
   if (button != GLFW_MOUSE_BUTTON_LEFT)
      return;

   if (action == GLFW_PRESS)
   {
      override_pos = GL_TRUE;
      FUNC0(cursor_x, cursor_y);
   }
   else
   {
      override_pos = GL_FALSE;
   }
}