
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* video_driver_get_ptr_internal (int) ;

void *video_driver_get_ptr(bool force_nonthreaded_data)
{
   return video_driver_get_ptr_internal(force_nonthreaded_data);
}
