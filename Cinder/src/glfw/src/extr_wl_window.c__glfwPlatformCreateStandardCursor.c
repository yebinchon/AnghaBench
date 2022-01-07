
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wl_cursor {int * images; } ;
struct TYPE_7__ {int image; } ;
struct TYPE_8__ {TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWcursor ;
struct TYPE_6__ {int cursorTheme; } ;
struct TYPE_9__ {TYPE_1__ wl; } ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 TYPE_5__ _glfw ;
 int _glfwInputError (int ,char*,int ) ;
 int translateCursorShape (int) ;
 struct wl_cursor* wl_cursor_theme_get_cursor (int ,int ) ;

int _glfwPlatformCreateStandardCursor(_GLFWcursor* cursor, int shape)
{
    struct wl_cursor* standardCursor;

    standardCursor = wl_cursor_theme_get_cursor(_glfw.wl.cursorTheme,
                                                translateCursorShape(shape));
    if (!standardCursor)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Standard cursor \"%s\" not found",
                        translateCursorShape(shape));
        return GLFW_FALSE;
    }

    cursor->wl.image = standardCursor->images[0];
    return GLFW_TRUE;
}
