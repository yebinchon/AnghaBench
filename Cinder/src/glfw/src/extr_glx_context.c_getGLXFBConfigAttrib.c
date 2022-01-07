
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef int GLXFBConfig ;


 TYPE_2__ _glfw ;
 int glXGetFBConfigAttrib (int ,int ,int,int*) ;

__attribute__((used)) static int getGLXFBConfigAttrib(GLXFBConfig fbconfig, int attrib)
{
    int value;
    glXGetFBConfigAttrib(_glfw.x11.display, fbconfig, attrib, &value);
    return value;
}
