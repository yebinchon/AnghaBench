#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct wl_surface {int dummy; } ;
struct wl_cursor_image {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  hotspot_y; int /*<<< orphan*/  hotspot_x; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_10__ {TYPE_6__* currentCursor; } ;
struct TYPE_14__ {scalar_t__ cursorMode; TYPE_1__ wl; } ;
typedef  TYPE_5__ _GLFWwindow ;
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct wl_buffer* buffer; int /*<<< orphan*/  yhot; int /*<<< orphan*/  xhot; } ;
struct TYPE_15__ {TYPE_3__ wl; } ;
typedef  TYPE_6__ _GLFWcursor ;
struct TYPE_13__ {int /*<<< orphan*/  pointerSerial; int /*<<< orphan*/  pointer; TYPE_2__* defaultCursor; TYPE_5__* pointerFocus; struct wl_surface* cursorSurface; } ;
struct TYPE_16__ {TYPE_4__ wl; } ;
struct TYPE_11__ {struct wl_cursor_image** images; } ;

/* Variables and functions */
 scalar_t__ GLFW_CURSOR_NORMAL ; 
 TYPE_9__ _glfw ; 
 struct wl_buffer* FUNC0 (struct wl_cursor_image*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wl_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_surface*,struct wl_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wl_surface*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(_GLFWwindow* window, _GLFWcursor* cursor)
{
    struct wl_buffer* buffer;
    struct wl_cursor_image* image;
    struct wl_surface* surface = _glfw.wl.cursorSurface;

    if (!_glfw.wl.pointer)
        return;

    window->wl.currentCursor = cursor;

    // If we're not in the correct window just save the cursor
    // the next time the pointer enters the window the cursor will change
    if (window != _glfw.wl.pointerFocus)
        return;

    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (cursor == NULL)
        {
            image = _glfw.wl.defaultCursor->images[0];
            buffer = FUNC0(image);
            if (!buffer)
                return;
            FUNC1(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                                  surface,
                                  image->hotspot_x,
                                  image->hotspot_y);
            FUNC2(surface, buffer, 0, 0);
            FUNC4(surface, 0, 0,
                              image->width, image->height);
            FUNC3(surface);
        }
        else
        {
            FUNC1(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                                  surface,
                                  cursor->wl.xhot,
                                  cursor->wl.yhot);
            FUNC2(surface, cursor->wl.buffer, 0, 0);
            FUNC4(surface, 0, 0,
                              cursor->wl.width, cursor->wl.height);
            FUNC3(surface);
        }
    }
    else /* Cursor is hidden set cursor surface to NULL */
    {
        FUNC1(_glfw.wl.pointer, _glfw.wl.pointerSerial, NULL, 0, 0);
    }
}