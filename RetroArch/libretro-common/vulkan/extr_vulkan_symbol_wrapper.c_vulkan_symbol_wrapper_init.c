
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PFN_vkGetInstanceProcAddr ;


 int GetInstanceProcAddr ;

void vulkan_symbol_wrapper_init(PFN_vkGetInstanceProcAddr get_instance_proc_addr)
{
    GetInstanceProcAddr = get_instance_proc_addr;
}
