
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context; int allocated; } ;
struct TYPE_4__ {TYPE_1__ win32_tls; } ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 scalar_t__ TlsAlloc () ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;

GLFWbool _glfwInitThreadLocalStorageWin32(void)
{
    _glfw.win32_tls.context = TlsAlloc();
    if (_glfw.win32_tls.context == TLS_OUT_OF_INDEXES)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Win32: Failed to allocate TLS index");
        return GLFW_FALSE;
    }

    _glfw.win32_tls.allocated = GLFW_TRUE;
    return GLFW_TRUE;
}
