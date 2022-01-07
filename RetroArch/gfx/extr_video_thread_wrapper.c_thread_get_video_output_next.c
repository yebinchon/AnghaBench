
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int driver_data; TYPE_1__* poke; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_3__ {int (* get_video_output_next ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void thread_get_video_output_next(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;

   if (!thr)
      return;

   if (thr->poke && thr->poke->get_video_output_next)
      thr->poke->get_video_output_next(thr->driver_data);
}
