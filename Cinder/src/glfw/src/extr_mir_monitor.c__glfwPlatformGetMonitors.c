
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_16__ {scalar_t__ cur_mode; int output_id; int y; int x; } ;
struct TYPE_17__ {int modeCount; int modes; TYPE_2__ mir; } ;
typedef TYPE_3__ _GLFWmonitor ;
struct TYPE_19__ {int num_outputs; TYPE_4__* outputs; } ;
struct TYPE_18__ {scalar_t__ num_modes; scalar_t__ current_mode; int output_id; int position_y; int position_x; int physical_height_mm; int physical_width_mm; scalar_t__ connected; scalar_t__ used; } ;
struct TYPE_15__ {int connection; } ;
struct TYPE_14__ {TYPE_1__ mir; } ;
typedef TYPE_4__ MirDisplayOutput ;
typedef TYPE_5__ MirDisplayConfiguration ;


 TYPE_13__ _glfw ;
 TYPE_3__* _glfwAllocMonitor (char*,int ,int ) ;
 int _glfwPlatformGetVideoModes (TYPE_3__*,int *) ;
 TYPE_5__* mir_connection_create_display_config (int ) ;
 int mir_display_config_destroy (TYPE_5__*) ;
 TYPE_3__** realloc (TYPE_3__**,int) ;

_GLFWmonitor** _glfwPlatformGetMonitors(int* count)
{
    int i, found = 0;
    _GLFWmonitor** monitors = ((void*)0);
    MirDisplayConfiguration* displayConfig =
        mir_connection_create_display_config(_glfw.mir.connection);

    *count = 0;

    for (i = 0; i < displayConfig->num_outputs; i++)
    {
        const MirDisplayOutput* out = displayConfig->outputs + i;

        if (out->used &&
            out->connected &&
            out->num_modes &&
            out->current_mode < out->num_modes)
        {
            found++;
            monitors = realloc(monitors, sizeof(_GLFWmonitor*) * found);
            monitors[i] = _glfwAllocMonitor("Unknown",
                                                out->physical_width_mm,
                                                out->physical_height_mm);

            monitors[i]->mir.x = out->position_x;
            monitors[i]->mir.y = out->position_y;
            monitors[i]->mir.output_id = out->output_id;
            monitors[i]->mir.cur_mode = out->current_mode;

            monitors[i]->modes = _glfwPlatformGetVideoModes(monitors[i],
                                                            &monitors[i]->modeCount);
        }
    }

    mir_display_config_destroy(displayConfig);

    *count = found;
    return monitors;
}
