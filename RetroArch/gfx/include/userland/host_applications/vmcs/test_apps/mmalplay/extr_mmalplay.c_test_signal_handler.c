
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ ctx; } ;
typedef int MMAL_BOOL_T ;


 int LOG_ERROR (char*) ;
 int MMAL_PARAM_UNUSED (int) ;
 int exit (int) ;
 int mmalplay_stop (scalar_t__) ;
 TYPE_1__* play_info ;
 int play_info_count ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void test_signal_handler(int signum)
{
   static MMAL_BOOL_T stopped_already = 0;
   int i;
   MMAL_PARAM_UNUSED(signum);

   if (stopped_already)
   {
      LOG_ERROR("Killing program");
      exit(255);
   }
   stopped_already = 1;

   LOG_ERROR("BYE");
   for (i = 0; i < play_info_count; i++)
   {
      vcos_mutex_lock(&play_info[i].lock);
      if (play_info[i].ctx)
         mmalplay_stop(play_info[i].ctx);
      vcos_mutex_unlock(&play_info[i].lock);
   }
}
