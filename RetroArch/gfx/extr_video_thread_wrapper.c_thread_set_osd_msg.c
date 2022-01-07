
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_4__ {int driver_data; TYPE_1__* poke; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_3__ {int (* set_osd_msg ) (int ,int *,char const*,void const*,void*) ;} ;


 int stub1 (int ,int *,char const*,void const*,void*) ;

__attribute__((used)) static void thread_set_osd_msg(void *data,
      video_frame_info_t *video_info,
      const char *msg,
      const void *params, void *font)
{
   thread_video_t *thr = (thread_video_t*)data;

   if (!thr)
      return;



   if (thr->poke && thr->poke->set_osd_msg)
      thr->poke->set_osd_msg(thr->driver_data, video_info, msg, params, font);
}
