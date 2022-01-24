#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct wl_surface {int dummy; } ;
struct wl_cursor_image {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  hotspot_y; int /*<<< orphan*/  hotspot_x; } ;
struct wl_cursor {struct wl_cursor_image** images; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_13__ {TYPE_5__* currentCursor; } ;
struct TYPE_16__ {scalar_t__ cursorMode; TYPE_1__ wl; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_14__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct wl_buffer* buffer; int /*<<< orphan*/  yhot; int /*<<< orphan*/  xhot; struct wl_cursor_image* image; } ;
struct TYPE_17__ {TYPE_2__ wl; } ;
typedef  TYPE_5__ _GLFWcursor ;
struct TYPE_15__ {int /*<<< orphan*/  pointerSerial; int /*<<< orphan*/  pointer; int /*<<< orphan*/  cursorTheme; TYPE_4__* pointerFocus; struct wl_surface* cursorSurface; } ;
struct TYPE_12__ {TYPE_3__ wl; } ;

/* Variables and functions */
 scalar_t__ GLFW_CURSOR_DISABLED ; 
 scalar_t__ GLFW_CURSOR_HIDDEN ; 
 scalar_t__ GLFW_CURSOR_NORMAL ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 TYPE_11__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct wl_buffer* FUNC4 (struct wl_cursor_image*) ; 
 struct wl_cursor* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_surface*,struct wl_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wl_surface*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(_GLFWwindow* window, _GLFWcursor* cursor)
{
    struct wl_buffer* buffer;
    struct wl_cursor* defaultCursor;
    struct wl_cursor_image* image;
    struct wl_surface* surface = _glfw.wl.cursorSurface;

    if (!_glfw.wl.pointer)
        return;

    window->wl.currentCursor = cursor;

    // If we're not in the correct window just save the cursor
    // the next time the pointer enters the window the cursor will change
    if (window != _glfw.wl.pointerFocus)
        return;

    // Unlock possible pointer lock if no longer disabled.
    if (window->cursorMode != GLFW_CURSOR_DISABLED && FUNC1(window))
        FUNC3(window);

    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (cursor)
            image = cursor->wl.image;
        else
        {
            defaultCursor = FUNC5(_glfw.wl.cursorTheme,
                                                       "left_ptr");
            if (!defaultCursor)
            {
                FUNC0(GLFW_PLATFORM_ERROR,
                                "Wayland: Standard cursor not found");
                return;
            }
            image = defaultCursor->images[0];
        }

        if (image)
        {
            buffer = FUNC4(image);
            if (!buffer)
                return;
            FUNC6(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                                  surface,
                                  image->hotspot_x,
                                  image->hotspot_y);
            FUNC7(surface, buffer, 0, 0);
            FUNC9(surface, 0, 0,
                              image->width, image->height);
            FUNC8(surface);
        }
        else
        {
            FUNC6(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                                  surface,
                                  cursor->wl.xhot,
                                  cursor->wl.yhot);
            FUNC7(surface, cursor->wl.buffer, 0, 0);
            FUNC9(surface, 0, 0,
                              cursor->wl.width, cursor->wl.height);
            FUNC8(surface);
        }
    }
    else if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        if (!FUNC1(window))
            FUNC2(window);
    }
    else if (window->cursorMode == GLFW_CURSOR_HIDDEN)
    {
        FUNC6(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                              NULL, 0, 0);
    }
}