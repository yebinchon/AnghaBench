#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_22__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int width; int height; char const* title; void* focused; void* visible; int /*<<< orphan*/ * monitor; int /*<<< orphan*/  floating; int /*<<< orphan*/  autoIconify; int /*<<< orphan*/  decorated; void* resizable; } ;
typedef  TYPE_3__ _GLFWwndconfig ;
struct TYPE_23__ {int width; int height; int /*<<< orphan*/  refreshRate; int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; } ;
struct TYPE_27__ {int cursorPosX; int cursorPosY; int /*<<< orphan*/  (* Clear ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  cursorMode; int /*<<< orphan*/  floating; int /*<<< orphan*/  autoIconify; int /*<<< orphan*/  decorated; void* resizable; int /*<<< orphan*/ * monitor; TYPE_1__ videoMode; struct TYPE_27__* next; } ;
typedef  TYPE_4__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWmonitor ;
struct TYPE_28__ {int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; } ;
typedef  TYPE_5__ _GLFWfbconfig ;
struct TYPE_29__ {TYPE_4__* share; } ;
typedef  TYPE_6__ _GLFWctxconfig ;
struct TYPE_25__ {int /*<<< orphan*/  refreshRate; TYPE_3__ window; TYPE_6__ context; TYPE_5__ framebuffer; } ;
struct TYPE_24__ {TYPE_2__ hints; TYPE_4__* windowListHead; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_CURSOR_NORMAL ; 
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 void* GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_22__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,TYPE_6__*,TYPE_5__*) ; 
 TYPE_4__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 TYPE_4__* FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

GLFWwindow* FUNC16(int width, int height,
                                     const char* title,
                                     GLFWmonitor* monitor,
                                     GLFWwindow* share)
{
    _GLFWfbconfig fbconfig;
    _GLFWctxconfig ctxconfig;
    _GLFWwndconfig wndconfig;
    _GLFWwindow* window;
    _GLFWwindow* previous;

    FUNC0(NULL);

    if (width <= 0 || height <= 0)
    {
        FUNC1(GLFW_INVALID_VALUE, "Invalid window size");
        return NULL;
    }

    fbconfig  = _glfw.hints.framebuffer;
    ctxconfig = _glfw.hints.context;
    wndconfig = _glfw.hints.window;

    wndconfig.width   = width;
    wndconfig.height  = height;
    wndconfig.title   = title;
    wndconfig.monitor = (_GLFWmonitor*) monitor;
    ctxconfig.share   = (_GLFWwindow*) share;

    if (wndconfig.monitor)
    {
        wndconfig.resizable = GL_TRUE;
        wndconfig.visible   = GL_TRUE;
        wndconfig.focused   = GL_TRUE;
    }

    // Check the OpenGL bits of the window config
    if (!FUNC3(&ctxconfig))
        return NULL;

    window = FUNC13(1, sizeof(_GLFWwindow));
    window->next = _glfw.windowListHead;
    _glfw.windowListHead = window;

    window->videoMode.width       = width;
    window->videoMode.height      = height;
    window->videoMode.redBits     = fbconfig.redBits;
    window->videoMode.greenBits   = fbconfig.greenBits;
    window->videoMode.blueBits    = fbconfig.blueBits;
    window->videoMode.refreshRate = _glfw.hints.refreshRate;

    window->monitor     = wndconfig.monitor;
    window->resizable   = wndconfig.resizable;
    window->decorated   = wndconfig.decorated;
    window->autoIconify = wndconfig.autoIconify;
    window->floating    = wndconfig.floating;
    window->cursorMode  = GLFW_CURSOR_NORMAL;

    // Save the currently current context so it can be restored later
    previous = FUNC5();

    // Open the actual window and create its context
    if (!FUNC4(window, &wndconfig, &ctxconfig, &fbconfig))
    {
        FUNC14((GLFWwindow*) window);
        FUNC7(previous);
        return NULL;
    }

    FUNC7(window);

    // Retrieve the actual (as opposed to requested) context attributes
    if (!FUNC12(&ctxconfig))
    {
        FUNC14((GLFWwindow*) window);
        FUNC7(previous);
        return NULL;
    }

    // Verify the context against the requested parameters
    if (!FUNC2(&ctxconfig))
    {
        FUNC14((GLFWwindow*) window);
        FUNC7(previous);
        return NULL;
    }

    // Clearing the front buffer to black to avoid garbage pixels left over
    // from previous uses of our bit of VRAM
    window->Clear(GL_COLOR_BUFFER_BIT);
    FUNC10(window);

    // Restore the previously current context (or NULL)
    FUNC7(previous);

    if (wndconfig.monitor)
    {
        int width, height;
        FUNC6(window, &width, &height);

        window->cursorPosX = width / 2;
        window->cursorPosY = height / 2;

        FUNC8(window, window->cursorPosX, window->cursorPosY);
    }
    else
    {
        if (wndconfig.visible)
        {
            if (wndconfig.focused)
                FUNC9(window);
            else
                FUNC11(window);
        }
    }

    return (GLFWwindow*) window;
}