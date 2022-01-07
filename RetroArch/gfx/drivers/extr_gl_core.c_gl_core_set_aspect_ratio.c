
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keep_aspect; int should_resize; } ;
typedef TYPE_1__ gl_core_t ;



__attribute__((used)) static void gl_core_set_aspect_ratio(void *data, unsigned aspect_ratio_idx)
{
   gl_core_t *gl = (gl_core_t*)data;

   if (!gl)
      return;

   gl->keep_aspect = 1;
   gl->should_resize = 1;
}
