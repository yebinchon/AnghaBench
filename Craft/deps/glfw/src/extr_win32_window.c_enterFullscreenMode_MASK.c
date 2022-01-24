#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {TYPE_1__ win32; int /*<<< orphan*/  monitor; int /*<<< orphan*/  videoMode; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  GLboolean ;
typedef  TYPE_3__ GLFWvidmode ;

/* Variables and functions */
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int /*<<< orphan*/  SWP_NOCOPYBITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GLboolean FUNC4(_GLFWwindow* window)
{
    GLFWvidmode mode;
    GLboolean status;
    int xpos, ypos;

    status = FUNC3(window->monitor, &window->videoMode);

    FUNC2(window->monitor, &mode);
    FUNC1(window->monitor, &xpos, &ypos);

    FUNC0(window->win32.handle, HWND_TOPMOST,
                 xpos, ypos, mode.width, mode.height, SWP_NOCOPYBITS);

    return status;
}