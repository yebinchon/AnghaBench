
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int should_resize; } ;
typedef TYPE_1__ gl_core_t ;



__attribute__((used)) static void gl_core_apply_state_changes(void *data)
{
   gl_core_t *gl = (gl_core_t*)data;
   if (gl)
      gl->should_resize = 1;
}
