
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VkInstance ;
typedef int VkBool32 ;


 int VK_FALSE ;
 int VK_TRUE ;
 int VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL (int ,char*,int ) ;
 int vkCreateDevice ;
 int vkDestroyInstance ;
 int vkEnumerateDeviceExtensionProperties ;
 int vkEnumerateDeviceLayerProperties ;
 int vkEnumeratePhysicalDevices ;
 int vkGetDeviceProcAddr ;
 int vkGetPhysicalDeviceFeatures ;
 int vkGetPhysicalDeviceFormatProperties ;
 int vkGetPhysicalDeviceImageFormatProperties ;
 int vkGetPhysicalDeviceMemoryProperties ;
 int vkGetPhysicalDeviceProperties ;
 int vkGetPhysicalDeviceQueueFamilyProperties ;
 int vkGetPhysicalDeviceSparseImageFormatProperties ;

VkBool32 vulkan_symbol_wrapper_load_core_instance_symbols(VkInstance instance)
{
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkDestroyInstance", vkDestroyInstance)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkEnumeratePhysicalDevices", vkEnumeratePhysicalDevices)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetPhysicalDeviceFeatures", vkGetPhysicalDeviceFeatures)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetPhysicalDeviceFormatProperties", vkGetPhysicalDeviceFormatProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetPhysicalDeviceImageFormatProperties", vkGetPhysicalDeviceImageFormatProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetPhysicalDeviceProperties", vkGetPhysicalDeviceProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetPhysicalDeviceQueueFamilyProperties", vkGetPhysicalDeviceQueueFamilyProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetPhysicalDeviceMemoryProperties", vkGetPhysicalDeviceMemoryProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetDeviceProcAddr", vkGetDeviceProcAddr)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkCreateDevice", vkCreateDevice)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkEnumerateDeviceExtensionProperties", vkEnumerateDeviceExtensionProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkEnumerateDeviceLayerProperties", vkEnumerateDeviceLayerProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(instance, "vkGetPhysicalDeviceSparseImageFormatProperties", vkGetPhysicalDeviceSparseImageFormatProperties)) return VK_FALSE;
    return VK_TRUE;
}
