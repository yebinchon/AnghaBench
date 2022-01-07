
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ custom_cursor; scalar_t__ conf; } ;
struct TYPE_5__ {TYPE_1__ mir; } ;
typedef TYPE_2__ _GLFWcursor ;


 int mir_buffer_stream_release_sync (scalar_t__) ;
 int mir_cursor_configuration_destroy (scalar_t__) ;

void _glfwPlatformDestroyCursor(_GLFWcursor* cursor)
{
    if (cursor->mir.conf)
        mir_cursor_configuration_destroy(cursor->mir.conf);
    if (cursor->mir.custom_cursor)
        mir_buffer_stream_release_sync(cursor->mir.custom_cursor);
}
