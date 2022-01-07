
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dc; int (* GetPixelFormatAttribivARB ) (int ,int,int ,int,int*,int*) ;int ARB_pixel_format; } ;
struct TYPE_5__ {TYPE_1__ wgl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int GLFW_PLATFORM_ERROR ;
 int _glfwInputError (int ,char*,int) ;
 int assert (int ) ;
 int stub1 (int ,int,int ,int,int*,int*) ;

__attribute__((used)) static int getPixelFormatAttrib(_GLFWwindow* window, int pixelFormat, int attrib)
{
    int value = 0;

    assert(window->wgl.ARB_pixel_format);

    if (!window->wgl.GetPixelFormatAttribivARB(window->wgl.dc,
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
