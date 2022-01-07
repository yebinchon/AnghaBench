
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* winmm_js; } ;
struct TYPE_6__ {int szPname; } ;
struct TYPE_5__ {char const* name; } ;
typedef TYPE_2__ JOYCAPS ;


 scalar_t__ JOYERR_NOERROR ;
 TYPE_4__ _glfw ;
 char const* _glfwCreateUTF8FromWideString (int ) ;
 scalar_t__ _glfw_joyGetDevCaps (int,TYPE_2__*,int) ;
 int free (char const*) ;

const char* _glfwPlatformGetJoystickName(int joy)
{
    JOYCAPS jc;

    if (_glfw_joyGetDevCaps(joy, &jc, sizeof(JOYCAPS)) != JOYERR_NOERROR)
        return ((void*)0);

    free(_glfw.winmm_js[joy].name);
    _glfw.winmm_js[joy].name = _glfwCreateUTF8FromWideString(jc.szPname);

    return _glfw.winmm_js[joy].name;
}
