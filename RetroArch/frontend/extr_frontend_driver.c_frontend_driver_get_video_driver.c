
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_driver {int dummy; } ;
struct TYPE_3__ {struct video_driver const* (* get_video_driver ) () ;} ;
typedef TYPE_1__ frontend_ctx_driver_t ;


 TYPE_1__* frontend_get_ptr () ;
 struct video_driver const* stub1 () ;

const struct video_driver *frontend_driver_get_video_driver(void)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();
   if (!frontend || !frontend->get_video_driver)
      return ((void*)0);
   return frontend->get_video_driver();
}
