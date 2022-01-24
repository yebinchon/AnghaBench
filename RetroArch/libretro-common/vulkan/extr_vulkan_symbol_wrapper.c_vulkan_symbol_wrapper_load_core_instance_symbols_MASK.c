#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VkInstance ;
typedef  int /*<<< orphan*/  VkBool32 ;

/* Variables and functions */
 int /*<<< orphan*/  VK_FALSE ; 
 int /*<<< orphan*/  VK_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vkCreateDevice ; 
 int /*<<< orphan*/  vkDestroyInstance ; 
 int /*<<< orphan*/  vkEnumerateDeviceExtensionProperties ; 
 int /*<<< orphan*/  vkEnumerateDeviceLayerProperties ; 
 int /*<<< orphan*/  vkEnumeratePhysicalDevices ; 
 int /*<<< orphan*/  vkGetDeviceProcAddr ; 
 int /*<<< orphan*/  vkGetPhysicalDeviceFeatures ; 
 int /*<<< orphan*/  vkGetPhysicalDeviceFormatProperties ; 
 int /*<<< orphan*/  vkGetPhysicalDeviceImageFormatProperties ; 
 int /*<<< orphan*/  vkGetPhysicalDeviceMemoryProperties ; 
 int /*<<< orphan*/  vkGetPhysicalDeviceProperties ; 
 int /*<<< orphan*/  vkGetPhysicalDeviceQueueFamilyProperties ; 
 int /*<<< orphan*/  vkGetPhysicalDeviceSparseImageFormatProperties ; 

VkBool32 FUNC1(VkInstance instance)
{
    if (!FUNC0(instance, "vkDestroyInstance", vkDestroyInstance)) return VK_FALSE;
    if (!FUNC0(instance, "vkEnumeratePhysicalDevices", vkEnumeratePhysicalDevices)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetPhysicalDeviceFeatures", vkGetPhysicalDeviceFeatures)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetPhysicalDeviceFormatProperties", vkGetPhysicalDeviceFormatProperties)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetPhysicalDeviceImageFormatProperties", vkGetPhysicalDeviceImageFormatProperties)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetPhysicalDeviceProperties", vkGetPhysicalDeviceProperties)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetPhysicalDeviceQueueFamilyProperties", vkGetPhysicalDeviceQueueFamilyProperties)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetPhysicalDeviceMemoryProperties", vkGetPhysicalDeviceMemoryProperties)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetDeviceProcAddr", vkGetDeviceProcAddr)) return VK_FALSE;
    if (!FUNC0(instance, "vkCreateDevice", vkCreateDevice)) return VK_FALSE;
    if (!FUNC0(instance, "vkEnumerateDeviceExtensionProperties", vkEnumerateDeviceExtensionProperties)) return VK_FALSE;
    if (!FUNC0(instance, "vkEnumerateDeviceLayerProperties", vkEnumerateDeviceLayerProperties)) return VK_FALSE;
    if (!FUNC0(instance, "vkGetPhysicalDeviceSparseImageFormatProperties", vkGetPhysicalDeviceSparseImageFormatProperties)) return VK_FALSE;
    return VK_TRUE;
}