
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sigset_t ;
typedef int int64_t ;
struct TYPE_4__ {int verbose; } ;
struct TYPE_5__ {int timeout; int frameNextMethod; int timelapse; TYPE_1__ common_settings; } ;
typedef TYPE_2__ RASPISTILLYUV_STATE ;


 int CAMERA_SETTLE_TIME ;







 int SIGUSR1 ;
 int SIG_BLOCK ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int get_microseconds64 () ;
 int getchar () ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigwait (int *,int*) ;
 int stderr ;
 int vcos_log_error (char*,int,int) ;
 int vcos_sleep (int) ;

__attribute__((used)) static int wait_for_next_frame(RASPISTILLYUV_STATE *state, int *frame)
{
   static int64_t complete_time = -1;
   int keep_running = 1;

   int64_t current_time = get_microseconds64()/1000;

   if (complete_time == -1)
      complete_time = current_time + state->timeout;



   if (current_time >= complete_time && state->timeout != 0)
      keep_running = 0;

   switch (state->frameNextMethod)
   {
   case 129 :

      vcos_sleep(state->timeout);
      return 0;

   case 134 :
   {
      *frame+=1;


      vcos_sleep(10000);


      return 1;
   }

   case 128 :
   {
      static int64_t next_frame_ms = -1;


      *frame += 1;

      if (next_frame_ms == -1)
      {
         vcos_sleep(CAMERA_SETTLE_TIME);


         current_time = get_microseconds64()/1000;


         next_frame_ms = current_time + state->timelapse;
      }
      else
      {
         int64_t this_delay_ms = next_frame_ms - current_time;

         if (this_delay_ms < 0)
         {

            if (-this_delay_ms < -state->timelapse/2)
            {

               next_frame_ms += state->timelapse;
               vcos_log_error("Frame %d is %d ms late", *frame, (int)(-this_delay_ms));
            }
            else
            {
               int nskip = 1 + (-this_delay_ms)/state->timelapse;
               vcos_log_error("Skipping frame %d to restart at frame %d", *frame, *frame+nskip);
               *frame += nskip;
               this_delay_ms += nskip * state->timelapse;
               vcos_sleep(this_delay_ms);
               next_frame_ms += (nskip + 1) * state->timelapse;
            }
         }
         else
         {
            vcos_sleep(this_delay_ms);
            next_frame_ms += state->timelapse;
         }
      }

      return keep_running;
   }

   case 131 :
   {
      int ch;

      if (state->common_settings.verbose)
         fprintf(stderr, "Press Enter to capture, X then ENTER to exit\n");

      ch = getchar();
      *frame+=1;
      if (ch == 'x' || ch == 'X')
         return 0;
      else
      {
         return keep_running;
      }
   }

   case 132 :
   {





      if (*frame == 0)
         vcos_sleep(CAMERA_SETTLE_TIME);
      else
         vcos_sleep(30);

      *frame+=1;

      return keep_running;
   }

   case 133 :
   {

      return 0;
   }

   case 130 :
   {

      sigset_t waitset;
      int sig;
      int result = 0;

      sigemptyset( &waitset );
      sigaddset( &waitset, SIGUSR1 );



      pthread_sigmask( SIG_BLOCK, &waitset, ((void*)0) );

      if (state->common_settings.verbose)
      {
         fprintf(stderr, "Waiting for SIGUSR1 to initiate capture\n");
      }

      result = sigwait( &waitset, &sig );

      if (state->common_settings.verbose)
      {
         if( result == 0)
         {
            fprintf(stderr, "Received SIGUSR1\n");
         }
         else
         {
            fprintf(stderr, "Bad signal received - error %d\n", errno);
         }
      }

      *frame+=1;

      return keep_running;
   }
   }


   return keep_running;
}
