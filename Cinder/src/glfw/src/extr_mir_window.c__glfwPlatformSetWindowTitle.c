
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int surface; } ;
struct TYPE_8__ {TYPE_2__ mir; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int connection; } ;
struct TYPE_9__ {TYPE_1__ mir; } ;
typedef int MirSurfaceSpec ;


 TYPE_5__ _glfw ;
 int * mir_connection_create_spec_for_changes (int ) ;
 int mir_surface_apply_spec (int ,int *) ;
 int mir_surface_spec_release (int *) ;
 int mir_surface_spec_set_name (int *,char const*) ;

void _glfwPlatformSetWindowTitle(_GLFWwindow* window, const char* title)
{
    MirSurfaceSpec* spec;
    const char* e_title = title ? title : "";

    spec = mir_connection_create_spec_for_changes(_glfw.mir.connection);
    mir_surface_spec_set_name(spec, e_title);

    mir_surface_apply_spec(window->mir.surface, spec);
    mir_surface_spec_release(spec);
}
