
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short* red; unsigned short* green; unsigned short* blue; int size; } ;
typedef int GLFWmonitor ;
typedef TYPE_1__ GLFWgammaramp ;


 float FLT_MAX ;
 int GLFW_INVALID_VALUE ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*) ;
 int glfwSetGammaRamp (int *,TYPE_1__*) ;
 double pow (double,double) ;

void glfwSetGamma(GLFWmonitor* handle, float gamma)
{
    int i;
    unsigned short values[256];
    GLFWgammaramp ramp;

    _GLFW_REQUIRE_INIT();

    if (gamma != gamma || gamma <= 0.f || gamma > FLT_MAX)
    {
        _glfwInputError(GLFW_INVALID_VALUE, "Invalid gamma value");
        return;
    }

    for (i = 0; i < 256; i++)
    {
        double value;


        value = i / 255.0;

        value = pow(value, 1.0 / gamma) * 65535.0 + 0.5;


        if (value > 65535.0)
            value = 65535.0;

        values[i] = (unsigned short) value;
    }

    ramp.red = values;
    ramp.green = values;
    ramp.blue = values;
    ramp.size = 256;

    glfwSetGammaRamp(handle, &ramp);
}
