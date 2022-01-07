
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sigset_t ;
typedef int int64_t ;
struct TYPE_7__ {int verbose; } ;
struct TYPE_6__ {int abort; } ;
struct TYPE_8__ {int timeout; int waitMethod; int onTime; int offTime; TYPE_2__ common_settings; int bCapturing; TYPE_1__ callback_data; } ;
typedef TYPE_3__ RASPIVIDYUV_STATE ;


 int ABORT_INTERVAL ;
 int SIGUSR1 ;
 int SIG_BLOCK ;





 int errno ;
 int fprintf (int ,char*,...) ;
 int get_microseconds64 () ;
 char getchar () ;
 int pause_and_test_abort (TYPE_3__*,int) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigwait (int *,int*) ;
 int stderr ;
 int vcos_sleep (int ) ;

__attribute__((used)) static int wait_for_next_change(RASPIVIDYUV_STATE *state)
{
   int keep_running = 1;
   static int64_t complete_time = -1;


   int64_t current_time = get_microseconds64()/1000;

   if (complete_time == -1)
      complete_time = current_time + state->timeout;


   if (current_time >= complete_time && state->timeout != 0)
      keep_running = 0;

   switch (state->waitMethod)
   {
   case 130:
      (void)pause_and_test_abort(state, state->timeout);
      return 0;

   case 132:
   {

      while (!state->callback_data.abort)

         vcos_sleep(ABORT_INTERVAL);

      return 0;
   }

   case 128:
   {
      int abort;

      if (state->bCapturing)
         abort = pause_and_test_abort(state, state->onTime);
      else
         abort = pause_and_test_abort(state, state->offTime);

      if (abort)
         return 0;
      else
         return keep_running;
   }

   case 131:
   {
      char ch;

      if (state->common_settings.verbose)
         fprintf(stderr, "Press Enter to %s, X then ENTER to exit\n", state->bCapturing ? "pause" : "capture");

      ch = getchar();
      if (ch == 'x' || ch == 'X')
         return 0;
      else
         return keep_running;
   }

   case 129:
   {

      sigset_t waitset;
      int sig;
      int result = 0;

      sigemptyset( &waitset );
      sigaddset( &waitset, SIGUSR1 );



      pthread_sigmask( SIG_BLOCK, &waitset, ((void*)0) );

      if (state->common_settings.verbose)
      {
         fprintf(stderr, "Waiting for SIGUSR1 to %s\n", state->bCapturing ? "pause" : "capture");
      }

      result = sigwait( &waitset, &sig );

      if (state->common_settings.verbose && result != 0)
         fprintf(stderr, "Bad signal received - error %d\n", errno);

      return keep_running;
   }

   }

   return keep_running;
}
