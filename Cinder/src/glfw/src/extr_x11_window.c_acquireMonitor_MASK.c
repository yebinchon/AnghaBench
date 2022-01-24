#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  handle; scalar_t__ overrideRedirect; } ;
struct TYPE_18__ {TYPE_7__* monitor; TYPE_3__ x11; int /*<<< orphan*/  videoMode; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_20__ {int /*<<< orphan*/  window; } ;
struct TYPE_19__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_15__ {scalar_t__ count; int /*<<< orphan*/  exposure; int /*<<< orphan*/  blanking; int /*<<< orphan*/  interval; int /*<<< orphan*/  timeout; } ;
struct TYPE_16__ {int /*<<< orphan*/  display; TYPE_1__ saver; } ;
struct TYPE_14__ {TYPE_2__ x11; } ;
typedef  TYPE_5__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  DefaultExposures ; 
 int /*<<< orphan*/  DontPreferBlanking ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_13__ _glfw ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GLFWbool FUNC7(_GLFWwindow* window)
{
    GLFWbool status;

    if (_glfw.x11.saver.count == 0)
    {
        // Remember old screen saver settings
        FUNC0(_glfw.x11.display,
                        &_glfw.x11.saver.timeout,
                        &_glfw.x11.saver.interval,
                        &_glfw.x11.saver.blanking,
                        &_glfw.x11.saver.exposure);

        // Disable screen saver
        FUNC2(_glfw.x11.display, 0, 0, DontPreferBlanking,
                        DefaultExposures);
    }

    if (!window->monitor->window)
        _glfw.x11.saver.count++;

    status = FUNC6(window->monitor, &window->videoMode);

    if (window->x11.overrideRedirect)
    {
        int xpos, ypos;
        GLFWvidmode mode;

        // Manually position the window over its monitor
        FUNC4(window->monitor, &xpos, &ypos);
        FUNC5(window->monitor, &mode);

        FUNC1(_glfw.x11.display, window->x11.handle,
                          xpos, ypos, mode.width, mode.height);
    }

    FUNC3(window->monitor, window);
    return status;
}