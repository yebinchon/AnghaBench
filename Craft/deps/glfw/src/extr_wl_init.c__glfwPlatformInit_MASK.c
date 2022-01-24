#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWmonitor ;
struct TYPE_4__ {int /*<<< orphan*/  context; } ;
struct TYPE_5__ {int monitorsSize; int /*<<< orphan*/  compositor; int /*<<< orphan*/  cursorSurface; int /*<<< orphan*/  defaultCursor; int /*<<< orphan*/  cursorTheme; scalar_t__ shm; scalar_t__ pointer; int /*<<< orphan*/  display; TYPE_1__ xkb; int /*<<< orphan*/  monitors; int /*<<< orphan*/  registry; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  registryListener ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(void)
{
    _glfw.wl.display = FUNC8(NULL);
    if (!_glfw.wl.display)
    {
        FUNC3(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to connect to display");
        return GL_FALSE;
    }

    _glfw.wl.registry = FUNC9(_glfw.wl.display);
    FUNC11(_glfw.wl.registry, &registryListener, NULL);

    _glfw.wl.monitors = FUNC4(4, sizeof(_GLFWmonitor*));
    _glfw.wl.monitorsSize = 4;

    _glfw.wl.xkb.context = FUNC12(0);
    if (!_glfw.wl.xkb.context)
    {
        FUNC3(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to initialize xkb context");
        return GL_FALSE;
    }

    // Sync so we got all registry objects
    FUNC10(_glfw.wl.display);

    // Sync so we got all initial output events
    FUNC10(_glfw.wl.display);

    if (!FUNC0())
        return GL_FALSE;

    FUNC2();
    FUNC1();

    if (_glfw.wl.pointer && _glfw.wl.shm)
    {
        _glfw.wl.cursorTheme = FUNC7(NULL, 32, _glfw.wl.shm);
        if (!_glfw.wl.cursorTheme)
        {
            FUNC3(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to load default cursor theme\n");
            return GL_FALSE;
        }
        _glfw.wl.defaultCursor =
            FUNC6(_glfw.wl.cursorTheme, "left_ptr");
        if (!_glfw.wl.defaultCursor)
        {
            FUNC3(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to load default left pointer\n");
            return GL_FALSE;
        }
        _glfw.wl.cursorSurface =
            FUNC5(_glfw.wl.compositor);
    }

    return GL_TRUE;
}