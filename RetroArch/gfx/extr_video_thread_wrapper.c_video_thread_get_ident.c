
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_3__ {char const* ident; } ;


 scalar_t__ video_driver_get_ptr (int) ;

const char *video_thread_get_ident(void)
{
   const thread_video_t *thr = (const thread_video_t*)
      video_driver_get_ptr(1);

   if (!thr || !thr->driver)
      return ((void*)0);
   return thr->driver->ident;
}
