
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int xcb_connection_t ;
typedef int sci ;
struct TYPE_17__ {int handle; } ;
struct TYPE_18__ {TYPE_4__ x11; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_19__ {int window; int dpy; int sType; int * connection; } ;
typedef TYPE_6__ VkXlibSurfaceCreateInfoKHR ;
typedef TYPE_6__ VkXcbSurfaceCreateInfoKHR ;
typedef int VkSurfaceKHR ;
typedef scalar_t__ VkResult ;
typedef int VkInstance ;
typedef int VkAllocationCallbacks ;
struct TYPE_15__ {int * (* XGetXCBConnection ) (int ) ;scalar_t__ handle; } ;
struct TYPE_16__ {int display; TYPE_2__ x11xcb; } ;
struct TYPE_14__ {scalar_t__ KHR_xcb_surface; } ;
struct TYPE_13__ {TYPE_3__ x11; TYPE_1__ vk; } ;
typedef scalar_t__ (* PFN_vkCreateXlibSurfaceKHR ) (int ,TYPE_6__*,int const*,int *) ;
typedef scalar_t__ (* PFN_vkCreateXcbSurfaceKHR ) (int ,TYPE_6__*,int const*,int *) ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ VK_ERROR_EXTENSION_NOT_PRESENT ;
 int VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR ;
 int VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR ;
 TYPE_12__ _glfw ;
 int _glfwGetVulkanResultString (scalar_t__) ;
 int _glfwInputError (int ,char*,...) ;
 int memset (TYPE_6__*,int ,int) ;
 int * stub1 (int ) ;
 scalar_t__ vkGetInstanceProcAddr (int ,char*) ;

VkResult _glfwPlatformCreateWindowSurface(VkInstance instance,
                                          _GLFWwindow* window,
                                          const VkAllocationCallbacks* allocator,
                                          VkSurfaceKHR* surface)
{
    if (_glfw.vk.KHR_xcb_surface && _glfw.x11.x11xcb.handle)
    {
        VkResult err;
        VkXcbSurfaceCreateInfoKHR sci;
        PFN_vkCreateXcbSurfaceKHR vkCreateXcbSurfaceKHR;

        xcb_connection_t* connection =
            _glfw.x11.x11xcb.XGetXCBConnection(_glfw.x11.display);
        if (!connection)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Failed to retrieve XCB connection");
            return VK_ERROR_EXTENSION_NOT_PRESENT;
        }

        vkCreateXcbSurfaceKHR = (PFN_vkCreateXcbSurfaceKHR)
            vkGetInstanceProcAddr(instance, "vkCreateXcbSurfaceKHR");
        if (!vkCreateXcbSurfaceKHR)
        {
            _glfwInputError(GLFW_API_UNAVAILABLE,
                            "X11: Vulkan instance missing VK_KHR_xcb_surface extension");
            return VK_ERROR_EXTENSION_NOT_PRESENT;
        }

        memset(&sci, 0, sizeof(sci));
        sci.sType = VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR;
        sci.connection = connection;
        sci.window = window->x11.handle;

        err = vkCreateXcbSurfaceKHR(instance, &sci, allocator, surface);
        if (err)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Failed to create Vulkan XCB surface: %s",
                            _glfwGetVulkanResultString(err));
        }

        return err;
    }
    else
    {
        VkResult err;
        VkXlibSurfaceCreateInfoKHR sci;
        PFN_vkCreateXlibSurfaceKHR vkCreateXlibSurfaceKHR;

        vkCreateXlibSurfaceKHR = (PFN_vkCreateXlibSurfaceKHR)
            vkGetInstanceProcAddr(instance, "vkCreateXlibSurfaceKHR");
        if (!vkCreateXlibSurfaceKHR)
        {
            _glfwInputError(GLFW_API_UNAVAILABLE,
                            "X11: Vulkan instance missing VK_KHR_xlib_surface extension");
            return VK_ERROR_EXTENSION_NOT_PRESENT;
        }

        memset(&sci, 0, sizeof(sci));
        sci.sType = VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR;
        sci.dpy = _glfw.x11.display;
        sci.window = window->x11.handle;

        err = vkCreateXlibSurfaceKHR(instance, &sci, allocator, surface);
        if (err)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: Failed to create Vulkan X11 surface: %s",
                            _glfwGetVulkanResultString(err));
        }

        return err;
    }
}
