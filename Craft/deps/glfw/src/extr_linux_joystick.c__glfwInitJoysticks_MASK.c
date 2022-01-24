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
struct TYPE_3__ {int inotify; int watch; int /*<<< orphan*/  regex; } ;
struct TYPE_4__ {TYPE_1__ linux_js; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GL_FALSE ; 
 int GL_TRUE ; 
 int IN_ATTRIB ; 
 int IN_CLOEXEC ; 
 int IN_CREATE ; 
 int IN_NONBLOCK ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,char const*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(void)
{
#if defined(__linux__)
    const char* dirname = "/dev/input";
    DIR* dir;

    _glfw.linux_js.inotify = FUNC3(IN_NONBLOCK | IN_CLOEXEC);
    if (_glfw.linux_js.inotify == -1)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to initialize inotify: %s",
                        FUNC10(errno));
        return GL_FALSE;
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
                        FUNC10(errno));
        // Continue without device connection notifications
    }

    if (FUNC7(&_glfw.linux_js.regex, "^js[0-9]\\+$", 0) != 0)
    {
        FUNC0(GLFW_PLATFORM_ERROR, "Linux: Failed to compile regex");
        return GL_FALSE;
    }

    dir = FUNC5(dirname);
    if (dir)
    {
        struct dirent* entry;

        while ((entry = FUNC6(dir)))
        {
            char path[20];
            regmatch_t match;

            if (FUNC8(&_glfw.linux_js.regex, entry->d_name, 1, &match, 0) != 0)
                continue;

            FUNC9(path, sizeof(path), "%s/%s", dirname, entry->d_name);
            FUNC4(path);
        }

        FUNC1(dir);
    }
    else
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to open joystick device directory %s: %s",
                        dirname,
                        FUNC10(errno));
        // Continue with no joysticks detected
    }

#endif // __linux__

    return GL_TRUE;
}