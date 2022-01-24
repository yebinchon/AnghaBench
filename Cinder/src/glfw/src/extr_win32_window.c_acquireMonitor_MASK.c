#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  monitor; TYPE_1__ win32; int /*<<< orphan*/  videoMode; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOCOPYBITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GLFWbool FUNC5(_GLFWwindow* window)
{
    GLFWvidmode mode;
    GLFWbool status;
    int xpos, ypos;

    status = FUNC4(window->monitor, &window->videoMode);

    FUNC3(window->monitor, &mode);
    FUNC2(window->monitor, &xpos, &ypos);

    FUNC0(window->win32.handle, HWND_TOPMOST,
                 xpos, ypos, mode.width, mode.height,
                 SWP_NOACTIVATE | SWP_NOCOPYBITS);

    FUNC1(window->monitor, window);
    return status;
}