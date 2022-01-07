
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ctx_data; TYPE_1__* ctx_driver; } ;
typedef TYPE_2__ gl_core_t ;
struct TYPE_3__ {int (* suppress_screensaver ) (scalar_t__,int) ;} ;


 int stub1 (scalar_t__,int) ;

__attribute__((used)) static bool gl_core_suppress_screensaver(void *data, bool enable)
{
   bool enabled = enable;
   gl_core_t *gl = (gl_core_t*)data;
   if (gl->ctx_data && gl->ctx_driver->suppress_screensaver)
      return gl->ctx_driver->suppress_screensaver(gl->ctx_data, enabled);
   return 0;
}
