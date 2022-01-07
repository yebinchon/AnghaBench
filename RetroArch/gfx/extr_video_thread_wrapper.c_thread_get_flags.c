
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int driver_data; TYPE_1__* poke; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_3__ {int (* get_flags ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static uint32_t thread_get_flags(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;
   if (!thr || !thr->poke || !thr->poke->get_flags)
      return 0;
   return thr->poke->get_flags(thr->driver_data);
}
