
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;
typedef int GLXFBConfig ;
typedef int GLXContext ;


 int GLX_RGBA_TYPE ;
 int True ;
 TYPE_2__ _glfw ;
 int _glfw_glXCreateNewContext (int ,int ,int ,int ,int ) ;

__attribute__((used)) static GLXContext createLegacyContext(_GLFWwindow* window,
                                      GLXFBConfig fbconfig,
                                      GLXContext share)
{
    return _glfw_glXCreateNewContext(_glfw.x11.display,
                                     fbconfig,
                                     GLX_RGBA_TYPE,
                                     share,
                                     True);
}
