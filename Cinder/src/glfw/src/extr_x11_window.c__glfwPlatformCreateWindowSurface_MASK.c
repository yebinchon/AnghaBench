#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  sci ;
struct TYPE_17__ {int /*<<< orphan*/  handle; } ;
struct TYPE_18__ {TYPE_4__ x11; } ;
typedef  TYPE_5__ _GLFWwindow ;
struct TYPE_19__ {int /*<<< orphan*/  window; int /*<<< orphan*/  dpy; int /*<<< orphan*/  sType; int /*<<< orphan*/ * connection; } ;
typedef  TYPE_6__ VkXlibSurfaceCreateInfoKHR ;
typedef  TYPE_6__ VkXcbSurfaceCreateInfoKHR ;
typedef  int /*<<< orphan*/  VkSurfaceKHR ;
typedef  scalar_t__ VkResult ;
typedef  int /*<<< orphan*/  VkInstance ;
typedef  int /*<<< orphan*/  VkAllocationCallbacks ;
struct TYPE_15__ {int /*<<< orphan*/ * (* XGetXCBConnection ) (int /*<<< orphan*/ ) ;scalar_t__ handle; } ;
struct TYPE_16__ {int /*<<< orphan*/  display; TYPE_2__ x11xcb; } ;
struct TYPE_14__ {scalar_t__ KHR_xcb_surface; } ;
struct TYPE_13__ {TYPE_3__ x11; TYPE_1__ vk; } ;
typedef  scalar_t__ (* PFN_vkCreateXlibSurfaceKHR ) (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ (* PFN_vkCreateXcbSurfaceKHR ) (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 scalar_t__ VK_ERROR_EXTENSION_NOT_PRESENT ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR ; 
 TYPE_12__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

VkResult FUNC5(VkInstance instance,
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
            FUNC1(GLFW_PLATFORM_ERROR,
                            "X11: Failed to retrieve XCB connection");
            return VK_ERROR_EXTENSION_NOT_PRESENT;
        }

        vkCreateXcbSurfaceKHR = (PFN_vkCreateXcbSurfaceKHR)
            FUNC4(instance, "vkCreateXcbSurfaceKHR");
        if (!vkCreateXcbSurfaceKHR)
        {
            FUNC1(GLFW_API_UNAVAILABLE,
                            "X11: Vulkan instance missing VK_KHR_xcb_surface extension");
            return VK_ERROR_EXTENSION_NOT_PRESENT;
        }

        FUNC2(&sci, 0, sizeof(sci));
        sci.sType = VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR;
        sci.connection = connection;
        sci.window = window->x11.handle;

        err = vkCreateXcbSurfaceKHR(instance, &sci, allocator, surface);
        if (err)
        {
            FUNC1(GLFW_PLATFORM_ERROR,
                            "X11: Failed to create Vulkan XCB surface: %s",
                            FUNC0(err));
        }

        return err;
    }
    else
    {
        VkResult err;
        VkXlibSurfaceCreateInfoKHR sci;
        PFN_vkCreateXlibSurfaceKHR vkCreateXlibSurfaceKHR;

        vkCreateXlibSurfaceKHR = (PFN_vkCreateXlibSurfaceKHR)
            FUNC4(instance, "vkCreateXlibSurfaceKHR");
        if (!vkCreateXlibSurfaceKHR)
        {
            FUNC1(GLFW_API_UNAVAILABLE,
                            "X11: Vulkan instance missing VK_KHR_xlib_surface extension");
            return VK_ERROR_EXTENSION_NOT_PRESENT;
        }

        FUNC2(&sci, 0, sizeof(sci));
        sci.sType = VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR;
        sci.dpy = _glfw.x11.display;
        sci.window = window->x11.handle;

        err = vkCreateXlibSurfaceKHR(instance, &sci, allocator, surface);
        if (err)
        {
            FUNC1(GLFW_PLATFORM_ERROR,
                            "X11: Failed to create Vulkan X11 surface: %s",
                            FUNC0(err));
        }

        return err;
    }
}