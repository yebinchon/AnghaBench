
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* shader_path; } ;
typedef TYPE_1__ d3d9_video_t ;


 int d3d9_init_multipass (TYPE_1__*,char const*) ;
 int d3d9_init_singlepass (TYPE_1__*) ;
 int string_is_empty (char const*) ;

__attribute__((used)) static bool d3d9_process_shader(d3d9_video_t *d3d)
{
   const char *shader_path = d3d->shader_path;
   if (d3d && !string_is_empty(shader_path))
      return d3d9_init_multipass(d3d, shader_path);

   return d3d9_init_singlepass(d3d);
}
