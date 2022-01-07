
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_26__ {int width; int height; char const* title; void* focused; void* visible; int * monitor; int floating; int autoIconify; int decorated; void* resizable; } ;
typedef TYPE_3__ _GLFWwndconfig ;
struct TYPE_23__ {int width; int height; int refreshRate; int blueBits; int greenBits; int redBits; } ;
struct TYPE_27__ {int cursorPosX; int cursorPosY; int (* Clear ) (int ) ;int cursorMode; int floating; int autoIconify; int decorated; void* resizable; int * monitor; TYPE_1__ videoMode; struct TYPE_27__* next; } ;
typedef TYPE_4__ _GLFWwindow ;
typedef int _GLFWmonitor ;
struct TYPE_28__ {int blueBits; int greenBits; int redBits; } ;
typedef TYPE_5__ _GLFWfbconfig ;
struct TYPE_29__ {TYPE_4__* share; } ;
typedef TYPE_6__ _GLFWctxconfig ;
struct TYPE_25__ {int refreshRate; TYPE_3__ window; TYPE_6__ context; TYPE_5__ framebuffer; } ;
struct TYPE_24__ {TYPE_2__ hints; TYPE_4__* windowListHead; } ;
typedef int GLFWwindow ;
typedef int GLFWmonitor ;


 int GLFW_CURSOR_NORMAL ;
 int GLFW_INVALID_VALUE ;
 int GL_COLOR_BUFFER_BIT ;
 void* GL_TRUE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_22__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int _glfwIsValidContext (TYPE_6__*) ;
 int _glfwIsValidContextConfig (TYPE_6__*) ;
 int _glfwPlatformCreateWindow (TYPE_4__*,TYPE_3__*,TYPE_6__*,TYPE_5__*) ;
 TYPE_4__* _glfwPlatformGetCurrentContext () ;
 int _glfwPlatformGetWindowSize (TYPE_4__*,int*,int*) ;
 int _glfwPlatformMakeContextCurrent (TYPE_4__*) ;
 int _glfwPlatformSetCursorPos (TYPE_4__*,int,int) ;
 int _glfwPlatformShowWindow (TYPE_4__*) ;
 int _glfwPlatformSwapBuffers (TYPE_4__*) ;
 int _glfwPlatformUnhideWindow (TYPE_4__*) ;
 int _glfwRefreshContextAttribs (TYPE_6__*) ;
 TYPE_4__* calloc (int,int) ;
 int glfwDestroyWindow (int *) ;
 int stub1 (int ) ;

GLFWwindow* glfwCreateWindow(int width, int height,
                                     const char* title,
                                     GLFWmonitor* monitor,
                                     GLFWwindow* share)
{
    _GLFWfbconfig fbconfig;
    _GLFWctxconfig ctxconfig;
    _GLFWwndconfig wndconfig;
    _GLFWwindow* window;
    _GLFWwindow* previous;

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (width <= 0 || height <= 0)
    {
        _glfwInputError(GLFW_INVALID_VALUE, "Invalid window size");
        return ((void*)0);
    }

    fbconfig = _glfw.hints.framebuffer;
    ctxconfig = _glfw.hints.context;
    wndconfig = _glfw.hints.window;

    wndconfig.width = width;
    wndconfig.height = height;
    wndconfig.title = title;
    wndconfig.monitor = (_GLFWmonitor*) monitor;
    ctxconfig.share = (_GLFWwindow*) share;

    if (wndconfig.monitor)
    {
        wndconfig.resizable = GL_TRUE;
        wndconfig.visible = GL_TRUE;
        wndconfig.focused = GL_TRUE;
    }


    if (!_glfwIsValidContextConfig(&ctxconfig))
        return ((void*)0);

    window = calloc(1, sizeof(_GLFWwindow));
    window->next = _glfw.windowListHead;
    _glfw.windowListHead = window;

    window->videoMode.width = width;
    window->videoMode.height = height;
    window->videoMode.redBits = fbconfig.redBits;
    window->videoMode.greenBits = fbconfig.greenBits;
    window->videoMode.blueBits = fbconfig.blueBits;
    window->videoMode.refreshRate = _glfw.hints.refreshRate;

    window->monitor = wndconfig.monitor;
    window->resizable = wndconfig.resizable;
    window->decorated = wndconfig.decorated;
    window->autoIconify = wndconfig.autoIconify;
    window->floating = wndconfig.floating;
    window->cursorMode = GLFW_CURSOR_NORMAL;


    previous = _glfwPlatformGetCurrentContext();


    if (!_glfwPlatformCreateWindow(window, &wndconfig, &ctxconfig, &fbconfig))
    {
        glfwDestroyWindow((GLFWwindow*) window);
        _glfwPlatformMakeContextCurrent(previous);
        return ((void*)0);
    }

    _glfwPlatformMakeContextCurrent(window);


    if (!_glfwRefreshContextAttribs(&ctxconfig))
    {
        glfwDestroyWindow((GLFWwindow*) window);
        _glfwPlatformMakeContextCurrent(previous);
        return ((void*)0);
    }


    if (!_glfwIsValidContext(&ctxconfig))
    {
        glfwDestroyWindow((GLFWwindow*) window);
        _glfwPlatformMakeContextCurrent(previous);
        return ((void*)0);
    }



    window->Clear(GL_COLOR_BUFFER_BIT);
    _glfwPlatformSwapBuffers(window);


    _glfwPlatformMakeContextCurrent(previous);

    if (wndconfig.monitor)
    {
        int width, height;
        _glfwPlatformGetWindowSize(window, &width, &height);

        window->cursorPosX = width / 2;
        window->cursorPosY = height / 2;

        _glfwPlatformSetCursorPos(window, window->cursorPosX, window->cursorPosY);
    }
    else
    {
        if (wndconfig.visible)
        {
            if (wndconfig.focused)
                _glfwPlatformShowWindow(window);
            else
                _glfwPlatformUnhideWindow(window);
        }
    }

    return (GLFWwindow*) window;
}
