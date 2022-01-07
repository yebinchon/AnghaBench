
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int DEFAULT_SHADER_TYPE ;


 int RARCH_SHADER_NONE ;
 int video_shader_is_supported (int) ;

__attribute__((used)) static enum rarch_shader_type gl2_get_fallback_shader_type(enum rarch_shader_type type)
{
   return RARCH_SHADER_NONE;
}
