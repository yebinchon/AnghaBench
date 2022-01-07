
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* publicKeys; } ;
struct TYPE_4__ {TYPE_1__ mir; } ;


 int GLFW_KEY_UNKNOWN ;
 TYPE_2__ _glfw ;

__attribute__((used)) static int toGLFWKeyCode(uint32_t key)
{
    if (key < sizeof(_glfw.mir.publicKeys) / sizeof(_glfw.mir.publicKeys[0]))
        return _glfw.mir.publicKeys[key];

    return GLFW_KEY_UNKNOWN;
}
