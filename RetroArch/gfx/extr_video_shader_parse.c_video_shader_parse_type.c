
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int path_get_extension (char const*) ;
 int video_shader_get_type_from_ext (int ,int *) ;

enum rarch_shader_type video_shader_parse_type(const char *path)
{
   return video_shader_get_type_from_ext(path_get_extension(path), ((void*)0));
}
