
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
struct TYPE_5__ {TYPE_1__ x11; } ;
typedef TYPE_2__ _GLFWcursor ;
typedef int GLFWimage ;


 int GL_FALSE ;
 int GL_TRUE ;
 int _glfwCreateCursor (int const*,int,int) ;

int _glfwPlatformCreateCursor(_GLFWcursor* cursor,
                              const GLFWimage* image,
                              int xhot, int yhot)
{
    cursor->x11.handle = _glfwCreateCursor(image, xhot, yhot);
    if (!cursor->x11.handle)
        return GL_FALSE;

    return GL_TRUE;
}
