
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audio_driver_start (int) ;
 int audio_driver_stop () ;

__attribute__((used)) static bool rarch_clear_all_thread_waits(unsigned clear_threads, void *data)
{
   if ( clear_threads > 0)
      audio_driver_start(0);
   else
      audio_driver_stop();

   return 1;
}
