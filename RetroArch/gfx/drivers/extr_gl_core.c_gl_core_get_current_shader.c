
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_shader {int dummy; } ;
struct TYPE_2__ {int filter_chain; } ;
typedef TYPE_1__ gl_core_t ;


 struct video_shader* gl_core_filter_chain_get_preset (int ) ;

__attribute__((used)) static struct video_shader *gl_core_get_current_shader(void *data)
{
   gl_core_t *gl = (gl_core_t*)data;
   if (!gl || !gl->filter_chain)
      return ((void*)0);

   return gl_core_filter_chain_get_preset(gl->filter_chain);
}
