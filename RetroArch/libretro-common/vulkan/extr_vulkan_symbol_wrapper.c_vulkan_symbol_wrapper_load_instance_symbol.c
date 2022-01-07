
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VkInstance ;
typedef int VkBool32 ;
typedef int * PFN_vkVoidFunction ;


 int * GetInstanceProcAddr (int ,char const*) ;

VkBool32 vulkan_symbol_wrapper_load_instance_symbol(VkInstance instance, const char *name, PFN_vkVoidFunction *ppSymbol)
{
    *ppSymbol = GetInstanceProcAddr(instance, name);
    return *ppSymbol != ((void*)0);
}
