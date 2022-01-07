
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int surface; } ;
struct TYPE_12__ {TYPE_2__ mir; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_9__ {scalar_t__ custom_cursor; scalar_t__ conf; } ;
struct TYPE_13__ {TYPE_1__ mir; } ;
typedef TYPE_5__ _GLFWcursor ;
struct TYPE_11__ {scalar_t__ default_conf; } ;
struct TYPE_14__ {TYPE_3__ mir; } ;


 TYPE_8__ _glfw ;
 int mir_buffer_stream_swap_buffers_sync (scalar_t__) ;
 int mir_surface_configure_cursor (int ,scalar_t__) ;
 int mir_wait_for (int ) ;

void _glfwPlatformSetCursor(_GLFWwindow* window, _GLFWcursor* cursor)
{
    if (cursor && cursor->mir.conf)
    {
        mir_wait_for(mir_surface_configure_cursor(window->mir.surface, cursor->mir.conf));
        if (cursor->mir.custom_cursor)
        {
            mir_buffer_stream_swap_buffers_sync(cursor->mir.custom_cursor);
        }
    }
    else
    {
        mir_wait_for(mir_surface_configure_cursor(window->mir.surface, _glfw.mir.default_conf));
    }
}
