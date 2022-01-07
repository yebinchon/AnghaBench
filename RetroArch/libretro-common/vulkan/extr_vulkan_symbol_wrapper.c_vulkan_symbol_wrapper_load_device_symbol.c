
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VkDevice ;
typedef int VkBool32 ;
typedef int * PFN_vkVoidFunction ;


 int * vkGetDeviceProcAddr (int ,char const*) ;

VkBool32 vulkan_symbol_wrapper_load_device_symbol(VkDevice device, const char *name, PFN_vkVoidFunction *ppSymbol)
{
    *ppSymbol = vkGetDeviceProcAddr(device, name);
    return *ppSymbol != ((void*)0);
}
