
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_driver_t ;
struct TYPE_2__ {void* driver_data; int * driver; } ;
typedef TYPE_1__ thread_video_t ;


 scalar_t__ video_driver_get_ptr (int) ;

void *video_thread_get_ptr(const video_driver_t **drv)
{
   const thread_video_t *thr = (const thread_video_t*)
      video_driver_get_ptr(1);

   if (drv)
      *drv = thr->driver;

   if (!thr)
      return ((void*)0);
   return thr->driver_data;
}
