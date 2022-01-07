
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int instance; } ;
struct TYPE_4__ {TYPE_1__ wgl; } ;
typedef scalar_t__ const GLFWglproc ;


 int GetProcAddress (int ,char const*) ;
 TYPE_2__ _glfw ;
 int wglGetProcAddress (char const*) ;

__attribute__((used)) static GLFWglproc getProcAddressWGL(const char* procname)
{
    const GLFWglproc proc = (GLFWglproc) wglGetProcAddress(procname);
    if (proc)
        return proc;

    return (GLFWglproc) GetProcAddress(_glfw.wgl.instance, procname);
}
