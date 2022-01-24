#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  regmatch_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  _GLFWjoystickLinux ;
struct TYPE_3__ {int inotify; int watch; int /*<<< orphan*/  js; int /*<<< orphan*/  regex; } ;
struct TYPE_4__ {TYPE_1__ linux_js; } ;
typedef  int /*<<< orphan*/  GLFWbool ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int IN_ATTRIB ; 
 int IN_CLOEXEC ; 
 int IN_CREATE ; 
 int IN_NONBLOCK ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compareJoysticks ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,char const*,int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

GLFWbool FUNC12(void)
{
#if defined(__linux__)
    DIR* dir;
    int count = 0;
    const char* dirname = "/dev/input";

    _glfw.linux_js.inotify = FUNC3(IN_NONBLOCK | IN_CLOEXEC);
    if (_glfw.linux_js.inotify == -1)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to initialize inotify: %s",
                        FUNC11(errno));
        return GLFW_FALSE;
    }

    // HACK: Register for IN_ATTRIB as well to get notified when udev is done
    //       This works well in practice but the true way is libudev

    _glfw.linux_js.watch = FUNC2(_glfw.linux_js.inotify,
                                             dirname,
                                             IN_CREATE | IN_ATTRIB);
    if (_glfw.linux_js.watch == -1)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to watch for joystick connections in %s: %s",
                        dirname,
                        FUNC11(errno));
        // Continue without device connection notifications
    }

    if (FUNC8(&_glfw.linux_js.regex, "^js[0-9]\\+$", 0) != 0)
    {
        FUNC0(GLFW_PLATFORM_ERROR, "Linux: Failed to compile regex");
        return GLFW_FALSE;
    }

    dir = FUNC5(dirname);
    if (dir)
    {
        struct dirent* entry;

        while ((entry = FUNC7(dir)))
        {
            char path[20];
            regmatch_t match;

            if (FUNC9(&_glfw.linux_js.regex, entry->d_name, 1, &match, 0) != 0)
                continue;

            FUNC10(path, sizeof(path), "%s/%s", dirname, entry->d_name);
            if (FUNC4(path))
                count++;
        }

        FUNC1(dir);
    }
    else
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to open joystick device directory %s: %s",
                        dirname,
                        FUNC11(errno));
        // Continue with no joysticks detected
    }

    FUNC6(_glfw.linux_js.js, count, sizeof(_GLFWjoystickLinux), compareJoysticks);
#endif // __linux__

    return GLFW_TRUE;
}