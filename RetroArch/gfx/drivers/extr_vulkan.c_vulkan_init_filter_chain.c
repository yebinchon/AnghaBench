
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vk_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int RARCH_LOG (char*) ;
 int RARCH_SHADER_SLANG ;
 char* retroarch_get_shader_preset () ;
 scalar_t__ string_is_empty (char const*) ;
 int video_shader_parse_type (char const*) ;
 int vulkan_init_default_filter_chain (int *) ;
 int vulkan_init_filter_chain_preset (int *,char const*) ;

__attribute__((used)) static bool vulkan_init_filter_chain(vk_t *vk)
{
   const char *shader_path = retroarch_get_shader_preset();
   enum rarch_shader_type type = video_shader_parse_type(shader_path);

   if (string_is_empty(shader_path))
   {
      RARCH_LOG("[Vulkan]: Loading stock shader.\n");
      return vulkan_init_default_filter_chain(vk);
   }

   if (type != RARCH_SHADER_SLANG)
   {
      RARCH_LOG("[Vulkan]: Only Slang shaders are supported, falling back to stock.\n");
      return vulkan_init_default_filter_chain(vk);
   }

   if (!shader_path || !vulkan_init_filter_chain_preset(vk, shader_path))
      vulkan_init_default_filter_chain(vk);

   return 1;
}
