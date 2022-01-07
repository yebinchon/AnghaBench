
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_shell_surface {int dummy; } ;
typedef int int32_t ;
typedef int _GLFWwindow ;


 int _glfwInputFramebufferSize (int *,int ,int ) ;
 int _glfwInputWindowDamage (int *) ;
 int _glfwInputWindowSize (int *,int ,int ) ;
 int _glfwPlatformSetWindowSize (int *,int ,int ) ;

__attribute__((used)) static void handleConfigure(void* data,
                            struct wl_shell_surface* shellSurface,
                            uint32_t edges,
                            int32_t width,
                            int32_t height)
{
    _GLFWwindow* window = data;
    _glfwInputFramebufferSize(window, width, height);
    _glfwInputWindowSize(window, width, height);
    _glfwPlatformSetWindowSize(window, width, height);
    _glfwInputWindowDamage(window);
}
