
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


typedef int _GLFWwndconfig ;
struct TYPE_20__ {scalar_t__ monitor; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int _GLFWfbconfig ;
struct TYPE_21__ {scalar_t__ client; scalar_t__ source; } ;
typedef TYPE_3__ _GLFWctxconfig ;
typedef int Visual ;
struct TYPE_19__ {int display; int screen; } ;
struct TYPE_18__ {TYPE_1__ x11; } ;


 int DefaultDepth (int ,int ) ;
 int * DefaultVisual (int ,int ) ;
 int GLFW_FALSE ;
 scalar_t__ GLFW_NATIVE_CONTEXT_API ;
 scalar_t__ GLFW_NO_API ;
 int GLFW_TRUE ;
 int XFlush (int ) ;
 TYPE_17__ _glfw ;
 int _glfwChooseVisualEGL (TYPE_3__ const*,int const*,int **,int*) ;
 int _glfwChooseVisualGLX (TYPE_3__ const*,int const*,int **,int*) ;
 int _glfwCreateContextEGL (TYPE_2__*,TYPE_3__ const*,int const*) ;
 int _glfwCreateContextGLX (TYPE_2__*,TYPE_3__ const*,int const*) ;
 int _glfwInitEGL () ;
 int _glfwInitGLX () ;
 int _glfwPlatformShowWindow (TYPE_2__*) ;
 int acquireMonitor (TYPE_2__*) ;
 int centerCursor (TYPE_2__*) ;
 int createNativeWindow (TYPE_2__*,int const*,int *,int) ;
 int updateWindowMode (TYPE_2__*) ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    Visual* visual;
    int depth;

    if (ctxconfig->client == GLFW_NO_API)
    {
        visual = DefaultVisual(_glfw.x11.display, _glfw.x11.screen);
        depth = DefaultDepth(_glfw.x11.display, _glfw.x11.screen);
    }
    else
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API)
        {
            if (!_glfwInitGLX())
                return GLFW_FALSE;
            if (!_glfwChooseVisualGLX(ctxconfig, fbconfig, &visual, &depth))
                return GLFW_FALSE;
        }
        else
        {
            if (!_glfwInitEGL())
                return GLFW_FALSE;
            if (!_glfwChooseVisualEGL(ctxconfig, fbconfig, &visual, &depth))
                return GLFW_FALSE;
        }
    }

    if (!createNativeWindow(window, wndconfig, visual, depth))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API)
        {
            if (!_glfwCreateContextGLX(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
        else
        {
            if (!_glfwCreateContextEGL(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
    }

    if (window->monitor)
    {
        _glfwPlatformShowWindow(window);
        updateWindowMode(window);
        if (!acquireMonitor(window))
            return GLFW_FALSE;

        centerCursor(window);
    }

    XFlush(_glfw.x11.display);
    return GLFW_TRUE;
}
