
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sci ;
struct TYPE_10__ {int surface; } ;
struct TYPE_11__ {TYPE_2__ mir; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int VkSurfaceKHR ;
typedef scalar_t__ VkResult ;
struct TYPE_12__ {int mirSurface; int connection; int sType; } ;
typedef TYPE_4__ VkMirSurfaceCreateInfoKHR ;
typedef int VkInstance ;
typedef int VkAllocationCallbacks ;
struct TYPE_9__ {int connection; } ;
struct TYPE_13__ {TYPE_1__ mir; } ;
typedef scalar_t__ (* PFN_vkCreateMirSurfaceKHR ) (int ,TYPE_4__*,int const*,int *) ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ VK_ERROR_EXTENSION_NOT_PRESENT ;
 int VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR ;
 TYPE_8__ _glfw ;
 int _glfwGetVulkanResultString (scalar_t__) ;
 int _glfwInputError (int ,char*,...) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ vkGetInstanceProcAddr (int ,char*) ;

VkResult _glfwPlatformCreateWindowSurface(VkInstance instance,
                                          _GLFWwindow* window,
                                          const VkAllocationCallbacks* allocator,
                                          VkSurfaceKHR* surface)
{
    VkResult err;
    VkMirSurfaceCreateInfoKHR sci;
    PFN_vkCreateMirSurfaceKHR vkCreateMirSurfaceKHR;

    vkCreateMirSurfaceKHR = (PFN_vkCreateMirSurfaceKHR)
        vkGetInstanceProcAddr(instance, "vkCreateMirSurfaceKHR");
    if (!vkCreateMirSurfaceKHR)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Mir: Vulkan instance missing VK_KHR_mir_surface extension");
        return VK_ERROR_EXTENSION_NOT_PRESENT;
    }

    memset(&sci, 0, sizeof(sci));
    sci.sType = VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR;
    sci.connection = _glfw.mir.connection;
    sci.mirSurface = window->mir.surface;

    err = vkCreateMirSurfaceKHR(instance, &sci, allocator, surface);
    if (err)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Mir: Failed to create Vulkan surface: %s",
                        _glfwGetVulkanResultString(err));
    }

    return err;
}
