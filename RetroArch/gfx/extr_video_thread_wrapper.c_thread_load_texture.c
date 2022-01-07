
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int driver_data; TYPE_1__* poke; } ;
typedef TYPE_2__ thread_video_t ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
struct TYPE_3__ {uintptr_t (* load_texture ) (int ,void*,int,int) ;} ;


 uintptr_t stub1 (int ,void*,int,int) ;

__attribute__((used)) static uintptr_t thread_load_texture(void *video_data, void *data,
      bool threaded, enum texture_filter_type filter_type)
{
   thread_video_t *thr = (thread_video_t*)video_data;

   if (!thr || !thr->poke || !thr->poke->load_texture)
      return 0;

   return thr->poke->load_texture(thr->driver_data, data, threaded, filter_type);
}
