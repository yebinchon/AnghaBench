
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * im; int display; int cursor; int context; int screen; int root; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int DefaultScreen (int ) ;
 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 int LC_CTYPE ;
 int RootWindow (int ,int ) ;
 int XCloseIM (int *) ;
 int XInitThreads () ;
 int XOpenDisplay (int *) ;
 int * XOpenIM (int ,int ,int *,int *) ;
 int XSetLocaleModifiers (char*) ;
 scalar_t__ XSupportsLocale () ;
 int XUniqueContext () ;
 TYPE_2__ _glfw ;
 int _glfwInitContextAPI () ;
 int _glfwInitJoysticks () ;
 int _glfwInitTimer () ;
 int _glfwInputError (int ,char*,...) ;
 int createNULLCursor () ;
 char* getenv (char*) ;
 int hasUsableInputMethodStyle () ;
 int initExtensions () ;
 int setlocale (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

int _glfwPlatformInit(void)
{



    if (strcmp(setlocale(LC_CTYPE, ((void*)0)), "C") == 0)
        setlocale(LC_CTYPE, "");


    XInitThreads();

    _glfw.x11.display = XOpenDisplay(((void*)0));
    if (!_glfw.x11.display)
    {
        const char* display = getenv("DISPLAY");
        if (display)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Failed to open display %s", display);
        }
        else
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: The DISPLAY environment variable is missing");
        }

        return GL_FALSE;
    }

    _glfw.x11.screen = DefaultScreen(_glfw.x11.display);
    _glfw.x11.root = RootWindow(_glfw.x11.display, _glfw.x11.screen);
    _glfw.x11.context = XUniqueContext();

    if (!initExtensions())
        return GL_FALSE;

    _glfw.x11.cursor = createNULLCursor();

    if (XSupportsLocale())
    {
        XSetLocaleModifiers("");

        _glfw.x11.im = XOpenIM(_glfw.x11.display, 0, ((void*)0), ((void*)0));
        if (_glfw.x11.im)
        {
            if (!hasUsableInputMethodStyle())
            {
                XCloseIM(_glfw.x11.im);
                _glfw.x11.im = ((void*)0);
            }
        }
    }

    if (!_glfwInitContextAPI())
        return GL_FALSE;

    if (!_glfwInitJoysticks())
        return GL_FALSE;

    _glfwInitTimer();

    return GL_TRUE;
}
