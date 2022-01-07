
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * custom_cursor; int conf; } ;
struct TYPE_5__ {TYPE_1__ mir; } ;
typedef TYPE_2__ _GLFWcursor ;


 int GL_FALSE ;
 int GL_TRUE ;
 char* getSystemCursorName (int) ;
 int mir_cursor_configuration_from_name (char const*) ;

int _glfwPlatformCreateStandardCursor(_GLFWcursor* cursor, int shape)
{
    const char* cursor_name = getSystemCursorName(shape);

    if (cursor_name)
    {
        cursor->mir.conf = mir_cursor_configuration_from_name(cursor_name);
        cursor->mir.custom_cursor = ((void*)0);

        return GL_TRUE;
    }

    return GL_FALSE;
}
