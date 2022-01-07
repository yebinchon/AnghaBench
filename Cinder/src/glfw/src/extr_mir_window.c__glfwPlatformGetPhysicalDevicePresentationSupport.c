
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VkPhysicalDevice ;
typedef int VkInstance ;
struct TYPE_3__ {int connection; } ;
struct TYPE_4__ {TYPE_1__ mir; } ;
typedef int (* PFN_vkGetPhysicalDeviceMirPresentationSupportKHR ) (int ,int ,int ) ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_FALSE ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int vkGetInstanceProcAddr (int ,char*) ;

int _glfwPlatformGetPhysicalDevicePresentationSupport(VkInstance instance,
                                                      VkPhysicalDevice device,
                                                      uint32_t queuefamily)
{
    PFN_vkGetPhysicalDeviceMirPresentationSupportKHR vkGetPhysicalDeviceMirPresentationSupportKHR =
        (PFN_vkGetPhysicalDeviceMirPresentationSupportKHR)
        vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMirPresentationSupportKHR");
    if (!vkGetPhysicalDeviceMirPresentationSupportKHR)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Mir: Vulkan instance missing VK_KHR_mir_surface extension");
        return GLFW_FALSE;
    }

    return vkGetPhysicalDeviceMirPresentationSupportKHR(device,
                                                        queuefamily,
                                                        _glfw.mir.connection);
}
