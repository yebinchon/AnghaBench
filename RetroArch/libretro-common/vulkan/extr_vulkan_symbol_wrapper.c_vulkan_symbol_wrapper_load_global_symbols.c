
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VkBool32 ;


 int VK_FALSE ;
 int VK_TRUE ;
 int VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL (int *,char*,int ) ;
 int vkCreateInstance ;
 int vkEnumerateInstanceExtensionProperties ;
 int vkEnumerateInstanceLayerProperties ;

VkBool32 vulkan_symbol_wrapper_load_global_symbols(void)
{
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(((void*)0), "vkCreateInstance", vkCreateInstance)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(((void*)0), "vkEnumerateInstanceExtensionProperties", vkEnumerateInstanceExtensionProperties)) return VK_FALSE;
    if (!VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(((void*)0), "vkEnumerateInstanceLayerProperties", vkEnumerateInstanceLayerProperties)) return VK_FALSE;
    return VK_TRUE;
}
