
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (int *) ;int (* finalize ) (int *) ;} ;


 int * recording_data ;
 TYPE_1__* recording_driver ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int video_driver_gpu_record_deinit () ;

__attribute__((used)) static bool recording_deinit(void)
{
   if (!recording_data || !recording_driver)
      return 0;

   if (recording_driver->finalize)
      recording_driver->finalize(recording_data);

   if (recording_driver->free)
      recording_driver->free(recording_data);

   recording_data = ((void*)0);
   recording_driver = ((void*)0);

   video_driver_gpu_record_deinit();

   return 1;
}
