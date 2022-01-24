#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  scalar_t__ VkResult ;
struct TYPE_8__ {int /*<<< orphan*/  extensionName; } ;
typedef  TYPE_2__ VkExtensionProperties ;
struct TYPE_7__ {int /*<<< orphan*/  extensionCount; int /*<<< orphan*/  extensions; void* KHR_surface; void* available; void* KHR_mir_surface; void* KHR_wayland_surface; void* KHR_xcb_surface; void* KHR_xlib_surface; void* KHR_win32_surface; scalar_t__ EnumerateInstanceExtensionProperties; scalar_t__ GetInstanceProcAddr; int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {TYPE_1__ vk; } ;
typedef  scalar_t__ PFN_vkGetInstanceProcAddr ;
typedef  scalar_t__ PFN_vkEnumerateInstanceExtensionProperties ;
typedef  void* GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 void* GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 void* GLFW_TRUE ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  _glfwGetVulkanResultString (scalar_t__) ; 
 int /*<<< orphan*/  _glfwInputError (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  _glfwPlatformGetRequiredInstanceExtensions (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _glfwTerminateVulkan () ; 
 int /*<<< orphan*/  _glfw_dlopen (char const*) ; 
 scalar_t__ _glfw_dlsym (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* calloc (size_t,int) ; 
 int /*<<< orphan*/  free (TYPE_2__*) ; 
 scalar_t__ strcmp (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ vkEnumerateInstanceExtensionProperties (int /*<<< orphan*/ *,size_t*,TYPE_2__*) ; 
 scalar_t__ vkGetInstanceProcAddr (int /*<<< orphan*/ *,char*) ; 

GLFWbool _glfwInitVulkan(void)
{
    VkResult err;
    VkExtensionProperties* ep;
    uint32_t i, count;

#if !defined(_GLFW_VULKAN_STATIC)
#if defined(_GLFW_WIN32)
    const char* name = "vulkan-1.dll";
#else
    const char* name = "libvulkan.so.1";
#endif

    if (_glfw.vk.available)
        return GLFW_TRUE;

    _glfw.vk.handle = _glfw_dlopen(name);
    if (!_glfw.vk.handle)
        return GLFW_FALSE;

    _glfw.vk.GetInstanceProcAddr = (PFN_vkGetInstanceProcAddr)
        _glfw_dlsym(_glfw.vk.handle, "vkGetInstanceProcAddr");
    if (!_glfw.vk.GetInstanceProcAddr)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Vulkan: Loader does not export vkGetInstanceProcAddr");

        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }

    _glfw.vk.EnumerateInstanceExtensionProperties = (PFN_vkEnumerateInstanceExtensionProperties)
        vkGetInstanceProcAddr(NULL, "vkEnumerateInstanceExtensionProperties");
    if (!_glfw.vk.EnumerateInstanceExtensionProperties)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "Vulkan: Failed to retrieve vkEnumerateInstanceExtensionProperties");

        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }
#endif // _GLFW_VULKAN_STATIC

    err = vkEnumerateInstanceExtensionProperties(NULL, &count, NULL);
    if (err)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Vulkan: Failed to query instance extension count: %s",
                        _glfwGetVulkanResultString(err));

        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }

    ep = calloc(count, sizeof(VkExtensionProperties));

    err = vkEnumerateInstanceExtensionProperties(NULL, &count, ep);
    if (err)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Vulkan: Failed to query instance extensions: %s",
                        _glfwGetVulkanResultString(err));

        free(ep);
        _glfwTerminateVulkan();
        return GLFW_FALSE;
    }

    for (i = 0;  i < count;  i++)
    {
        if (strcmp(ep[i].extensionName, "VK_KHR_surface") == 0)
            _glfw.vk.KHR_surface = GLFW_TRUE;
        if (strcmp(ep[i].extensionName, "VK_KHR_win32_surface") == 0)
            _glfw.vk.KHR_win32_surface = GLFW_TRUE;
        if (strcmp(ep[i].extensionName, "VK_KHR_xlib_surface") == 0)
            _glfw.vk.KHR_xlib_surface = GLFW_TRUE;
        if (strcmp(ep[i].extensionName, "VK_KHR_xcb_surface") == 0)
            _glfw.vk.KHR_xcb_surface = GLFW_TRUE;
        if (strcmp(ep[i].extensionName, "VK_KHR_wayland_surface") == 0)
            _glfw.vk.KHR_wayland_surface = GLFW_TRUE;
        if (strcmp(ep[i].extensionName, "VK_KHR_mir_surface") == 0)
            _glfw.vk.KHR_mir_surface = GLFW_TRUE;
    }

    free(ep);

    _glfw.vk.available = GLFW_TRUE;

    if (_glfw.vk.KHR_surface)
    {
        _glfw.vk.extensions =
            _glfwPlatformGetRequiredInstanceExtensions(&_glfw.vk.extensionCount);
    }

    return GLFW_TRUE;
}