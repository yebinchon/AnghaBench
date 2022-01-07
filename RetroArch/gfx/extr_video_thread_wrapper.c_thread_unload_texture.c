
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int driver_data; TYPE_1__* poke; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_3__ {int (* unload_texture ) (int ,uintptr_t) ;} ;


 int stub1 (int ,uintptr_t) ;

__attribute__((used)) static void thread_unload_texture(void *video_data, uintptr_t id)
{
   thread_video_t *thr = (thread_video_t*)video_data;

   if (!thr)
      return;

   if (thr->poke && thr->poke->unload_texture)
      thr->poke->unload_texture(thr->driver_data, id);
}
