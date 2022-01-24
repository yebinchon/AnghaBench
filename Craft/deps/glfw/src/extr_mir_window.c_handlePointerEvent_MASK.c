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
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  MirPointerEvent ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PRESS ; 
 int /*<<< orphan*/  GLFW_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
#define  mir_pointer_action_button_down 132 
#define  mir_pointer_action_button_up 131 
#define  mir_pointer_action_enter 130 
#define  mir_pointer_action_leave 129 
#define  mir_pointer_action_motion 128 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(const MirPointerEvent* pointer_event,
                             _GLFWwindow* window)
{
    int action = FUNC2(pointer_event);

    switch (action)
    {
          case mir_pointer_action_button_down:
              FUNC0(window, GLFW_PRESS, pointer_event);
              break;
          case mir_pointer_action_button_up:
              FUNC0(window, GLFW_RELEASE, pointer_event);
              break;
          case mir_pointer_action_motion:
              FUNC1(window, pointer_event);
              break;
          case mir_pointer_action_enter:
          case mir_pointer_action_leave:
              break;
          default:
              break;

    }
}