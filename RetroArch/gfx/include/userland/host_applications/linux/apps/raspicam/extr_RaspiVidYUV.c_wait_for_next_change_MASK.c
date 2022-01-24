#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  verbose; } ;
struct TYPE_6__ {int /*<<< orphan*/  abort; } ;
struct TYPE_8__ {int timeout; int waitMethod; int onTime; int offTime; TYPE_2__ common_settings; int /*<<< orphan*/  bCapturing; TYPE_1__ callback_data; } ;
typedef  TYPE_3__ RASPIVIDYUV_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_INTERVAL ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
#define  WAIT_METHOD_FOREVER 132 
#define  WAIT_METHOD_KEYPRESS 131 
#define  WAIT_METHOD_NONE 130 
#define  WAIT_METHOD_SIGNAL 129 
#define  WAIT_METHOD_TIMED 128 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 () ; 
 char FUNC2 () ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(RASPIVIDYUV_STATE *state)
{
   int keep_running = 1;
   static int64_t complete_time = -1;

   // Have we actually exceeded our timeout?
   int64_t current_time =  FUNC1()/1000;

   if (complete_time == -1)
      complete_time =  current_time + state->timeout;

   // if we have run out of time, flag we need to exit
   if (current_time >= complete_time && state->timeout != 0)
      keep_running = 0;

   switch (state->waitMethod)
   {
   case WAIT_METHOD_NONE:
      (void)FUNC3(state, state->timeout);
      return 0;

   case WAIT_METHOD_FOREVER:
   {
      // We never return from this. Expect a ctrl-c to exit or abort.
      while (!state->callback_data.abort)
          // Have a sleep so we don't hog the CPU.
         FUNC8(ABORT_INTERVAL);

      return 0;
   }

   case WAIT_METHOD_TIMED:
   {
      int abort;

      if (state->bCapturing)
         abort = FUNC3(state, state->onTime);
      else
         abort = FUNC3(state, state->offTime);

      if (abort)
         return 0;
      else
         return keep_running;
   }

   case WAIT_METHOD_KEYPRESS:
   {
      char ch;

      if (state->common_settings.verbose)
         FUNC0(stderr, "Press Enter to %s, X then ENTER to exit\n", state->bCapturing ? "pause" : "capture");

      ch = FUNC2();
      if (ch == 'x' || ch == 'X')
         return 0;
      else
         return keep_running;
   }

   case WAIT_METHOD_SIGNAL:
   {
      // Need to wait for a SIGUSR1 signal
      sigset_t waitset;
      int sig;
      int result = 0;

      FUNC6( &waitset );
      FUNC5( &waitset, SIGUSR1 );

      // We are multi threaded because we use mmal, so need to use the pthread
      // variant of procmask to block SIGUSR1 so we can wait on it.
      FUNC4( SIG_BLOCK, &waitset, NULL );

      if (state->common_settings.verbose)
      {
         FUNC0(stderr, "Waiting for SIGUSR1 to %s\n", state->bCapturing ? "pause" : "capture");
      }

      result = FUNC7( &waitset, &sig );

      if (state->common_settings.verbose && result != 0)
         FUNC0(stderr, "Bad signal received - error %d\n", errno);

      return keep_running;
   }

   } // switch

   return keep_running;
}