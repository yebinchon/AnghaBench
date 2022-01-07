
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_info_t ;
typedef int video_driver_t ;
struct TYPE_4__ {int video_thread; int const* driver; } ;
typedef TYPE_1__ thread_video_t ;
typedef int input_driver_t ;


 scalar_t__ calloc (int,int) ;
 int video_thread_init (TYPE_1__*,int const,int **,void**) ;
 int video_thread_set_callbacks (TYPE_1__*,int const*) ;

bool video_init_thread(const video_driver_t **out_driver,
      void **out_data, input_driver_t **input, void **input_data,
      const video_driver_t *drv, const video_info_t info)
{
   thread_video_t *thr = (thread_video_t*)calloc(1, sizeof(*thr));
   if (!thr)
      return 0;

   video_thread_set_callbacks(thr, drv);

   thr->driver = drv;
   *out_driver = &thr->video_thread;
   *out_data = thr;
   return video_thread_init(thr, info, input, input_data);
}
