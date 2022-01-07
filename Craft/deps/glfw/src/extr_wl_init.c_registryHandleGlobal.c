
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_registry {int dummy; } ;
struct TYPE_3__ {void* seat; void* shell; void* shm; void* compositor; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 TYPE_2__ _glfw ;
 int _glfwAddOutput (int ,int ) ;
 int seatListener ;
 scalar_t__ strcmp (char const*,char*) ;
 int wl_compositor_interface ;
 void* wl_registry_bind (struct wl_registry*,int ,int *,int) ;
 int wl_seat_add_listener (void*,int *,int *) ;
 int wl_seat_interface ;
 int wl_shell_interface ;
 int wl_shm_interface ;

__attribute__((used)) static void registryHandleGlobal(void* data,
                                 struct wl_registry* registry,
                                 uint32_t name,
                                 const char* interface,
                                 uint32_t version)
{
    if (strcmp(interface, "wl_compositor") == 0)
    {
        _glfw.wl.compositor =
            wl_registry_bind(registry, name, &wl_compositor_interface, 1);
    }
    else if (strcmp(interface, "wl_shm") == 0)
    {
        _glfw.wl.shm =
            wl_registry_bind(registry, name, &wl_shm_interface, 1);
    }
    else if (strcmp(interface, "wl_shell") == 0)
    {
        _glfw.wl.shell =
            wl_registry_bind(registry, name, &wl_shell_interface, 1);
    }
    else if (strcmp(interface, "wl_output") == 0)
    {
        _glfwAddOutput(name, version);
    }
    else if (strcmp(interface, "wl_seat") == 0)
    {
        if (!_glfw.wl.seat)
        {
            _glfw.wl.seat =
                wl_registry_bind(registry, name, &wl_seat_interface, 1);
            wl_seat_add_listener(_glfw.wl.seat, &seatListener, ((void*)0));
        }
    }
}
