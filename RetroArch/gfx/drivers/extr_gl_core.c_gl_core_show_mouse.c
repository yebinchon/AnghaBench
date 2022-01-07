
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ctx_data; TYPE_1__* ctx_driver; } ;
typedef TYPE_2__ gl_core_t ;
struct TYPE_3__ {int (* show_mouse ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static void gl_core_show_mouse(void *data, bool state)
{
   gl_core_t *gl = (gl_core_t*)data;

   if (gl && gl->ctx_driver->show_mouse)
      gl->ctx_driver->show_mouse(gl->ctx_data, state);
}
