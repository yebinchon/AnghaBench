
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int overlay_interface; int set_shader; int set_rotation; int set_viewport; int read_viewport; } ;
typedef TYPE_1__ video_driver_t ;
struct TYPE_8__ {int * poke_interface; int * overlay_interface; int * set_shader; int * set_rotation; int * set_viewport; int * read_viewport; } ;
struct TYPE_7__ {TYPE_5__ video_thread; } ;
typedef TYPE_2__ thread_video_t ;


 TYPE_5__ video_thread ;

__attribute__((used)) static void video_thread_set_callbacks(
      thread_video_t *thr,
      const video_driver_t *drv)
{
   thr->video_thread = video_thread;


   if (!drv->read_viewport)
      thr->video_thread.read_viewport = ((void*)0);
   if (!drv->set_viewport)
      thr->video_thread.set_viewport = ((void*)0);
   if (!drv->set_rotation)
      thr->video_thread.set_rotation = ((void*)0);
   if (!drv->set_shader)
      thr->video_thread.set_shader = ((void*)0);






   if (!thr->video_thread.poke_interface)
      thr->video_thread.poke_interface = ((void*)0);
}
