
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
struct TYPE_4__ {char const* shader_path; } ;
typedef TYPE_1__ d3d9_video_t ;


 int RARCH_ERR (char*) ;



 int RARCH_WARN (char*,...) ;
 int d3d9_process_shader (TYPE_1__*) ;
 int d3d9_restore (TYPE_1__*) ;
 int free (char const*) ;
 char const* strdup (char const*) ;
 int string_is_empty (char const*) ;
 int supported_shader_type ;
 int video_shader_to_str (int) ;

__attribute__((used)) static bool d3d9_set_shader(void *data,
      enum rarch_shader_type type, const char *path)
{
   return 0;

}
