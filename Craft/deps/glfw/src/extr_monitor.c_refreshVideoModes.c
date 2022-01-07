
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int modeCount; int * modes; } ;
typedef TYPE_1__ _GLFWmonitor ;
typedef int GLFWvidmode ;


 int GL_FALSE ;
 int GL_TRUE ;
 int * _glfwPlatformGetVideoModes (TYPE_1__*,int*) ;
 int compareVideoModes ;
 int free (int *) ;
 int qsort (int *,int,int,int ) ;

__attribute__((used)) static int refreshVideoModes(_GLFWmonitor* monitor)
{
    int modeCount;
    GLFWvidmode* modes;

    if (monitor->modes)
        return GL_TRUE;

    modes = _glfwPlatformGetVideoModes(monitor, &modeCount);
    if (!modes)
        return GL_FALSE;

    qsort(modes, modeCount, sizeof(GLFWvidmode), compareVideoModes);

    free(monitor->modes);
    monitor->modes = modes;
    monitor->modeCount = modeCount;

    return GL_TRUE;
}
