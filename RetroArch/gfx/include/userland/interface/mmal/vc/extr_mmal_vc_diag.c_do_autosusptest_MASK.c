#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {long tv_sec; long tv_usec; } ;
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; } ;
struct itimerval {struct timeval it_value; int /*<<< orphan*/  it_interval; } ;
typedef  int MMAL_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int MMAL_SUCCESS ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGALRM ; 
 int FUNC0 (char const*) ; 
 int autosusp_signal ; 
 int /*<<< orphan*/  autosusp_timeout_handler ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (long) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv)
{
   long timeout;
   struct timeval interval;
   MMAL_STATUS_T status;

   if (argc != 4)
   {
      FUNC7("usage: %s autosusp <timeout-ms> <signal>\n",
             argv[0]);
      FUNC7("   e.g. 650 9\n");
      FUNC1(1);
   }
   timeout = 1000 * FUNC0(argv[2]);
   autosusp_signal = FUNC0(argv[3]);

   if ((status=FUNC5()) != MMAL_SUCCESS)
   {
      FUNC2(stderr,"mmal_vc_use failed: %d\n", status);
      FUNC1(1);
   }

   /* install a signal handler for the alarm */
   struct sigaction sa;
   FUNC3(&sa, 0, sizeof(struct sigaction));
   sa.sa_sigaction = autosusp_timeout_handler;
   FUNC10(&sa.sa_mask);
   sa.sa_flags = SA_SIGINFO;
   if (FUNC9(SIGALRM, &sa, 0))
   {
      FUNC6("sigaction");
      FUNC1(1);
   }

   /* when to expire */
   interval.tv_sec = timeout / 1000000;
   interval.tv_usec = timeout % 1000000;

   struct itimerval alarm_spec = {
     .it_interval = {0,0},
     .it_value = interval
   };

   int rc = FUNC8(ITIMER_REAL, &alarm_spec, NULL);
   if (rc < 0)
   {
      FUNC6("setitimer failed");
      FUNC1(1);
   }

   FUNC11(timeout + 1000000);
   FUNC7("%s: not killed by timer\n", argv[0]);
   FUNC4();

   return 0;
}