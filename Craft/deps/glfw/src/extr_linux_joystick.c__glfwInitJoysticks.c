
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {char* d_name; } ;
typedef int regmatch_t ;
typedef int path ;
struct TYPE_3__ {int inotify; int watch; int regex; } ;
struct TYPE_4__ {TYPE_1__ linux_js; } ;
typedef int DIR ;


 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 int IN_ATTRIB ;
 int IN_CLOEXEC ;
 int IN_CREATE ;
 int IN_NONBLOCK ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*,...) ;
 int closedir (int *) ;
 int errno ;
 int inotify_add_watch (int,char const*,int) ;
 int inotify_init1 (int) ;
 int openJoystickDevice (char*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ regcomp (int *,char*,int ) ;
 scalar_t__ regexec (int *,char*,int,int *,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int strerror (int ) ;

int _glfwInitJoysticks(void)
{

    const char* dirname = "/dev/input";
    DIR* dir;

    _glfw.linux_js.inotify = inotify_init1(IN_NONBLOCK | IN_CLOEXEC);
    if (_glfw.linux_js.inotify == -1)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to initialize inotify: %s",
                        strerror(errno));
        return GL_FALSE;
    }




    _glfw.linux_js.watch = inotify_add_watch(_glfw.linux_js.inotify,
                                             dirname,
                                             IN_CREATE | IN_ATTRIB);
    if (_glfw.linux_js.watch == -1)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to watch for joystick connections in %s: %s",
                        dirname,
                        strerror(errno));

    }

    if (regcomp(&_glfw.linux_js.regex, "^js[0-9]\\+$", 0) != 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR, "Linux: Failed to compile regex");
        return GL_FALSE;
    }

    dir = opendir(dirname);
    if (dir)
    {
        struct dirent* entry;

        while ((entry = readdir(dir)))
        {
            char path[20];
            regmatch_t match;

            if (regexec(&_glfw.linux_js.regex, entry->d_name, 1, &match, 0) != 0)
                continue;

            snprintf(path, sizeof(path), "%s/%s", dirname, entry->d_name);
            openJoystickDevice(path);
        }

        closedir(dir);
    }
    else
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Linux: Failed to open joystick device directory %s: %s",
                        dirname,
                        strerror(errno));

    }



    return GL_TRUE;
}
