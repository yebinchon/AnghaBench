
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSTime ;


 int OSGetSystemTime () ;
 int runloop_iterate () ;
 int * swap_is_pending ;
 int task_queue_wait (int *,int *) ;
 scalar_t__ video_driver_get_ptr (int) ;

__attribute__((used)) static void main_loop(void)
{
   OSTime start_time;
   int status;

   do
   {
      if(video_driver_get_ptr(0))
      {
         start_time = OSGetSystemTime();
         task_queue_wait(swap_is_pending, &start_time);
      }
      else
         task_queue_wait(((void*)0), ((void*)0));

      status = runloop_iterate();

      if (status == -1)
         break;
   } while(1);
}
