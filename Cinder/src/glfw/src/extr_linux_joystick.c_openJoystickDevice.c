
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int name ;
struct TYPE_5__ {int fd; int axisCount; int buttonCount; void* buttons; void* axes; void* path; void* name; int present; } ;
typedef TYPE_2__ _GLFWjoystickLinux ;
struct TYPE_4__ {TYPE_2__* js; } ;
struct TYPE_6__ {TYPE_1__ linux_js; } ;
typedef int GLFWbool ;


 int GLFW_CONNECTED ;
 int GLFW_FALSE ;
 int GLFW_JOYSTICK_1 ;
 int GLFW_JOYSTICK_LAST ;
 int GLFW_TRUE ;
 int JSIOCGAXES ;
 int JSIOCGBUTTONS ;
 int JSIOCGNAME (int) ;
 int JSIOCGVERSION ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 TYPE_3__ _glfw ;
 int _glfwInputJoystickChange (int,int ) ;
 void* calloc (char,int) ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,...) ;
 int open (char const*,int) ;
 scalar_t__ strcmp (void*,char const*) ;
 void* strdup (char const*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static GLFWbool openJoystickDevice(const char* path)
{
    char axisCount, buttonCount;
    char name[256] = "";
    int joy, fd, version;
    _GLFWjoystickLinux* js;

    for (joy = GLFW_JOYSTICK_1; joy <= GLFW_JOYSTICK_LAST; joy++)
    {
        if (!_glfw.linux_js.js[joy].present)
            continue;

        if (strcmp(_glfw.linux_js.js[joy].path, path) == 0)
            return GLFW_FALSE;
    }

    for (joy = GLFW_JOYSTICK_1; joy <= GLFW_JOYSTICK_LAST; joy++)
    {
        if (!_glfw.linux_js.js[joy].present)
            break;
    }

    if (joy > GLFW_JOYSTICK_LAST)
        return GLFW_FALSE;

    fd = open(path, O_RDONLY | O_NONBLOCK);
    if (fd == -1)
        return GLFW_FALSE;


    ioctl(fd, JSIOCGVERSION, &version);
    if (version < 0x010000)
    {

        close(fd);
        return GLFW_FALSE;
    }

    if (ioctl(fd, JSIOCGNAME(sizeof(name)), name) < 0)
        strncpy(name, "Unknown", sizeof(name));

    js = _glfw.linux_js.js + joy;
    js->present = GLFW_TRUE;
    js->name = strdup(name);
    js->path = strdup(path);
    js->fd = fd;

    ioctl(fd, JSIOCGAXES, &axisCount);
    js->axisCount = (int) axisCount;
    js->axes = calloc(axisCount, sizeof(float));

    ioctl(fd, JSIOCGBUTTONS, &buttonCount);
    js->buttonCount = (int) buttonCount;
    js->buttons = calloc(buttonCount, 1);

    _glfwInputJoystickChange(joy, GLFW_CONNECTED);
    return GLFW_TRUE;
}
