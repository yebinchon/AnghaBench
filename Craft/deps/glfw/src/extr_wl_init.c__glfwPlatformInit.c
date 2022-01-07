
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _GLFWmonitor ;
struct TYPE_4__ {int context; } ;
struct TYPE_5__ {int monitorsSize; int compositor; int cursorSurface; int defaultCursor; int cursorTheme; scalar_t__ shm; scalar_t__ pointer; int display; TYPE_1__ xkb; int monitors; int registry; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;


 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 TYPE_3__ _glfw ;
 int _glfwInitContextAPI () ;
 int _glfwInitJoysticks () ;
 int _glfwInitTimer () ;
 int _glfwInputError (int ,char*) ;
 int calloc (int,int) ;
 int registryListener ;
 int wl_compositor_create_surface (int ) ;
 int wl_cursor_theme_get_cursor (int ,char*) ;
 int wl_cursor_theme_load (int *,int,scalar_t__) ;
 int wl_display_connect (int *) ;
 int wl_display_get_registry (int ) ;
 int wl_display_roundtrip (int ) ;
 int wl_registry_add_listener (int ,int *,int *) ;
 int xkb_context_new (int ) ;

int _glfwPlatformInit(void)
{
    _glfw.wl.display = wl_display_connect(((void*)0));
    if (!_glfw.wl.display)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to connect to display");
        return GL_FALSE;
    }

    _glfw.wl.registry = wl_display_get_registry(_glfw.wl.display);
    wl_registry_add_listener(_glfw.wl.registry, &registryListener, ((void*)0));

    _glfw.wl.monitors = calloc(4, sizeof(_GLFWmonitor*));
    _glfw.wl.monitorsSize = 4;

    _glfw.wl.xkb.context = xkb_context_new(0);
    if (!_glfw.wl.xkb.context)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to initialize xkb context");
        return GL_FALSE;
    }


    wl_display_roundtrip(_glfw.wl.display);


    wl_display_roundtrip(_glfw.wl.display);

    if (!_glfwInitContextAPI())
        return GL_FALSE;

    _glfwInitTimer();
    _glfwInitJoysticks();

    if (_glfw.wl.pointer && _glfw.wl.shm)
    {
        _glfw.wl.cursorTheme = wl_cursor_theme_load(((void*)0), 32, _glfw.wl.shm);
        if (!_glfw.wl.cursorTheme)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to load default cursor theme\n");
            return GL_FALSE;
        }
        _glfw.wl.defaultCursor =
            wl_cursor_theme_get_cursor(_glfw.wl.cursorTheme, "left_ptr");
        if (!_glfw.wl.defaultCursor)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to load default left pointer\n");
            return GL_FALSE;
        }
        _glfw.wl.cursorSurface =
            wl_compositor_create_surface(_glfw.wl.compositor);
    }

    return GL_TRUE;
}
