
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct wl_surface {int dummy; } ;
struct wl_cursor_image {int height; int width; int hotspot_y; int hotspot_x; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_10__ {TYPE_6__* currentCursor; } ;
struct TYPE_14__ {scalar_t__ cursorMode; TYPE_1__ wl; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_12__ {int height; int width; struct wl_buffer* buffer; int yhot; int xhot; } ;
struct TYPE_15__ {TYPE_3__ wl; } ;
typedef TYPE_6__ _GLFWcursor ;
struct TYPE_13__ {int pointerSerial; int pointer; TYPE_2__* defaultCursor; TYPE_5__* pointerFocus; struct wl_surface* cursorSurface; } ;
struct TYPE_16__ {TYPE_4__ wl; } ;
struct TYPE_11__ {struct wl_cursor_image** images; } ;


 scalar_t__ GLFW_CURSOR_NORMAL ;
 TYPE_9__ _glfw ;
 struct wl_buffer* wl_cursor_image_get_buffer (struct wl_cursor_image*) ;
 int wl_pointer_set_cursor (int ,int ,struct wl_surface*,int ,int ) ;
 int wl_surface_attach (struct wl_surface*,struct wl_buffer*,int ,int ) ;
 int wl_surface_commit (struct wl_surface*) ;
 int wl_surface_damage (struct wl_surface*,int ,int ,int ,int ) ;

void _glfwPlatformSetCursor(_GLFWwindow* window, _GLFWcursor* cursor)
{
    struct wl_buffer* buffer;
    struct wl_cursor_image* image;
    struct wl_surface* surface = _glfw.wl.cursorSurface;

    if (!_glfw.wl.pointer)
        return;

    window->wl.currentCursor = cursor;



    if (window != _glfw.wl.pointerFocus)
        return;

    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (cursor == ((void*)0))
        {
            image = _glfw.wl.defaultCursor->images[0];
            buffer = wl_cursor_image_get_buffer(image);
            if (!buffer)
                return;
            wl_pointer_set_cursor(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                                  surface,
                                  image->hotspot_x,
                                  image->hotspot_y);
            wl_surface_attach(surface, buffer, 0, 0);
            wl_surface_damage(surface, 0, 0,
                              image->width, image->height);
            wl_surface_commit(surface);
        }
        else
        {
            wl_pointer_set_cursor(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                                  surface,
                                  cursor->wl.xhot,
                                  cursor->wl.yhot);
            wl_surface_attach(surface, cursor->wl.buffer, 0, 0);
            wl_surface_damage(surface, 0, 0,
                              cursor->wl.width, cursor->wl.height);
            wl_surface_commit(surface);
        }
    }
    else
    {
        wl_pointer_set_cursor(_glfw.wl.pointer, _glfw.wl.pointerSerial, ((void*)0), 0, 0);
    }
}
