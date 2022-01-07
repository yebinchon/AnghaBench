
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;
typedef int EGLConfig ;


 TYPE_2__ _glfw ;
 int _glfw_eglGetConfigAttrib (int ,int ,int,int*) ;

__attribute__((used)) static int getConfigAttrib(EGLConfig config, int attrib)
{
    int value;
    _glfw_eglGetConfigAttrib(_glfw.egl.display, config, attrib, &value);
    return value;
}
