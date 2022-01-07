
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int surface; int height; int width; } ;
struct TYPE_9__ {TYPE_1__ mir; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_8__ {int connection; } ;
struct TYPE_10__ {TYPE_2__ mir; } ;
typedef int MirSurfaceSpec ;
typedef scalar_t__ MirPixelFormat ;
typedef int MirBufferUsage ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 TYPE_6__ _glfw ;
 int _glfwInputError (int ,char*,...) ;
 int addNewEvent ;
 scalar_t__ findValidPixelFormat () ;
 int mir_buffer_usage_hardware ;
 int * mir_connection_create_spec_for_normal_surface (int ,int ,int ,scalar_t__) ;
 scalar_t__ mir_pixel_format_invalid ;
 int mir_surface_create_sync (int *) ;
 int mir_surface_get_error_message (int ) ;
 int mir_surface_is_valid (int ) ;
 int mir_surface_set_event_handler (int ,int ,TYPE_3__*) ;
 int mir_surface_spec_release (int *) ;
 int mir_surface_spec_set_buffer_usage (int *,int ) ;
 int mir_surface_spec_set_name (int *,char*) ;

__attribute__((used)) static GLFWbool createSurface(_GLFWwindow* window)
{
    MirSurfaceSpec* spec;
    MirBufferUsage buffer_usage = mir_buffer_usage_hardware;
    MirPixelFormat pixel_format = findValidPixelFormat();

    if (pixel_format == mir_pixel_format_invalid)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Mir: Unable to find a correct pixel format");
        return GLFW_FALSE;
    }

    spec = mir_connection_create_spec_for_normal_surface(_glfw.mir.connection,
                                                         window->mir.width,
                                                         window->mir.height,
                                                         pixel_format);

    mir_surface_spec_set_buffer_usage(spec, buffer_usage);
    mir_surface_spec_set_name(spec, "MirSurface");

    window->mir.surface = mir_surface_create_sync(spec);
    mir_surface_spec_release(spec);

    if (!mir_surface_is_valid(window->mir.surface))
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Mir: Unable to create surface: %s",
                        mir_surface_get_error_message(window->mir.surface));

        return GLFW_FALSE;
    }

    mir_surface_set_event_handler(window->mir.surface, addNewEvent, window);

    return GLFW_TRUE;
}
