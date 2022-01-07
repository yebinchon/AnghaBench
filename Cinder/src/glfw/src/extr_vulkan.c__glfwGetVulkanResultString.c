
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VkResult ;
const char* _glfwGetVulkanResultString(VkResult result)
{
    switch (result)
    {
        case 129:
            return "Success";
        case 131:
            return "A fence or query has not yet completed";
        case 128:
            return "A wait operation has not completed in the specified time";
        case 133:
            return "An event is signaled";
        case 134:
            return "An event is unsignaled";
        case 132:
            return "A return array was too small for the result";
        case 138:
            return "A host memory allocation has failed";
        case 139:
            return "A device memory allocation has failed";
        case 144:
            return "Initialization of an object could not be completed for implementation-specific reasons";
        case 150:
            return "The logical or physical device has been lost";
        case 142:
            return "Mapping of a memory object has failed";
        case 143:
            return "A requested layer is not present or could not be loaded";
        case 149:
            return "A requested extension is not supported";
        case 148:
            return "A requested feature is not supported";
        case 145:
            return "The requested version of Vulkan is not supported by the driver or is otherwise incompatible";
        case 136:
            return "Too many objects of the type have already been created";
        case 147:
            return "A requested format is not supported on this device";
        case 137:
            return "A surface is no longer available";
        case 130:
            return "A swapchain no longer matches the surface properties exactly, but can still be used";
        case 140:
            return "A surface has changed in such a way that it is no longer compatible with the swapchain";
        case 146:
            return "The display used by a swapchain does not use the same presentable image layout";
        case 141:
            return "The requested window is already connected to a VkSurfaceKHR, or to some other non-Vulkan API";
        case 135:
            return "A validation layer found an error";
        default:
            return "ERROR: UNKNOWN VULKAN ERROR";
    }
}
