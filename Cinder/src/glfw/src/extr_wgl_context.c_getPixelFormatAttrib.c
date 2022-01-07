
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dc; } ;
struct TYPE_9__ {TYPE_2__ wgl; } ;
struct TYPE_10__ {TYPE_3__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_7__ {int (* GetPixelFormatAttribivARB ) (int ,int,int ,int,int*,int*) ;int ARB_pixel_format; } ;
struct TYPE_11__ {TYPE_1__ wgl; } ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_6__ _glfw ;
 int _glfwInputError (int ,char*,int) ;
 int assert (int ) ;
 int stub1 (int ,int,int ,int,int*,int*) ;

__attribute__((used)) static int getPixelFormatAttrib(_GLFWwindow* window, int pixelFormat, int attrib)
{
    int value = 0;

    assert(_glfw.wgl.ARB_pixel_format);

    if (!_glfw.wgl.GetPixelFormatAttribivARB(window->context.wgl.dc,
                                             pixelFormat,
                                             0, 1, &attrib, &value))
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to retrieve pixel format attribute %i",
                        attrib);
        return 0;
    }

    return value;
}
