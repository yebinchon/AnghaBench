
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum retro_hw_context_type { ____Placeholder_retro_hw_context_type } retro_hw_context_type ;


 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,...) ;
__attribute__((used)) static bool dynamic_request_hw_context(enum retro_hw_context_type type,
      unsigned minor, unsigned major)
{
   switch (type)
   {
      case 134:
         RARCH_LOG("Requesting no HW context.\n");
         break;

      case 128:




         RARCH_ERR("Requesting Vulkan context, but RetroArch is not compiled against Vulkan. Cannot use HW context.\n");
         return 0;
      default:
         RARCH_LOG("Requesting unknown context.\n");
         return 0;
   }

   return 1;
}
