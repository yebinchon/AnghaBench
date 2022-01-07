
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct wl_surface {int dummy; } ;
struct wl_cursor_image {int height; int width; int hotspot_y; int hotspot_x; } ;
struct wl_cursor {struct wl_cursor_image** images; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_13__ {TYPE_5__* currentCursor; } ;
struct TYPE_16__ {scalar_t__ cursorMode; TYPE_1__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_14__ {int height; int width; struct wl_buffer* buffer; int yhot; int xhot; struct wl_cursor_image* image; } ;
struct TYPE_17__ {TYPE_2__ wl; } ;
typedef TYPE_5__ _GLFWcursor ;
struct TYPE_15__ {int pointerSerial; int pointer; int cursorTheme; TYPE_4__* pointerFocus; struct wl_surface* cursorSurface; } ;
struct TYPE_12__ {TYPE_3__ wl; } ;


 scalar_t__ GLFW_CURSOR_DISABLED ;
 scalar_t__ GLFW_CURSOR_HIDDEN ;
 scalar_t__ GLFW_CURSOR_NORMAL ;
 int GLFW_PLATFORM_ERROR ;
 TYPE_11__ _glfw ;
 int _glfwInputError (int ,char*) ;
 scalar_t__ isPointerLocked (TYPE_4__*) ;
 int lockPointer (TYPE_4__*) ;
 int unlockPointer (TYPE_4__*) ;
 struct wl_buffer* wl_cursor_image_get_buffer (struct wl_cursor_image*) ;
 struct wl_cursor* wl_cursor_theme_get_cursor (int ,char*) ;
 int wl_pointer_set_cursor (int ,int ,struct wl_surface*,int ,int ) ;
 int wl_surface_attach (struct wl_surface*,struct wl_buffer*,int ,int ) ;
 int wl_surface_commit (struct wl_surface*) ;
 int wl_surface_damage (struct wl_surface*,int ,int ,int ,int ) ;

void _glfwPlatformSetCursor(_GLFWwindow* window, _GLFWcursor* cursor)
{
    struct wl_buffer* buffer;
    struct wl_cursor* defaultCursor;
    struct wl_cursor_image* image;
    struct wl_surface* surface = _glfw.wl.cursorSurface;

    if (!_glfw.wl.pointer)
        return;

    window->wl.currentCursor = cursor;



    if (window != _glfw.wl.pointerFocus)
        return;


    if (window->cursorMode != GLFW_CURSOR_DISABLED && isPointerLocked(window))
        unlockPointer(window);

    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (cursor)
            image = cursor->wl.image;
        else
        {
            defaultCursor = wl_cursor_theme_get_cursor(_glfw.wl.cursorTheme,
                                                       "left_ptr");
            if (!defaultCursor)
            {
                _glfwInputError(GLFW_PLATFORM_ERROR,
                                "Wayland: Standard cursor not found");
                return;
            }
            image = defaultCursor->images[0];
        }

        if (image)
        {
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
    else if (window->cursorMode == GLFW_CURSOR_DISABLED)
    {
        if (!isPointerLocked(window))
            lockPointer(window);
    }
    else if (window->cursorMode == GLFW_CURSOR_HIDDEN)
    {
        wl_pointer_set_cursor(_glfw.wl.pointer, _glfw.wl.pointerSerial,
                              ((void*)0), 0, 0);
    }
}
