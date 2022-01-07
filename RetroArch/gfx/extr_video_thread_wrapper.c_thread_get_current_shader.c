
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int driver_data; TYPE_1__* poke; } ;
typedef TYPE_2__ thread_video_t ;
struct video_shader {int dummy; } ;
struct TYPE_3__ {struct video_shader* (* get_current_shader ) (int ) ;} ;


 struct video_shader* stub1 (int ) ;

__attribute__((used)) static struct video_shader *thread_get_current_shader(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;
   if (!thr || !thr->poke)
      return ((void*)0);
   return thr->poke->get_current_shader(thr->driver_data);
}
