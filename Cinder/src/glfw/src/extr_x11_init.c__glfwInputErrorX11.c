
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int errorCode; int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int XGetErrorText (int ,int ,char*,int) ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int,char*,char const*,char*) ;

void _glfwInputErrorX11(int error, const char* message)
{
    char buffer[8192];
    XGetErrorText(_glfw.x11.display, _glfw.x11.errorCode,
                  buffer, sizeof(buffer));

    _glfwInputError(error, "%s: %s", message, buffer);
}
