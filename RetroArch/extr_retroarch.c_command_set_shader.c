
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef int abs_arg ;
struct TYPE_3__ {char* directory_video_shader; } ;
struct TYPE_4__ {TYPE_1__ paths; } ;


 int PATH_MAX_LENGTH ;
 TYPE_2__* configuration_settings ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 int path_is_absolute (char const*) ;
 int retroarch_apply_shader (int,char const*,int) ;
 int string_is_empty (char const*) ;
 int video_shader_is_supported (int) ;
 int video_shader_parse_type (char const*) ;

bool command_set_shader(const char *arg)
{
   return 0;

}
