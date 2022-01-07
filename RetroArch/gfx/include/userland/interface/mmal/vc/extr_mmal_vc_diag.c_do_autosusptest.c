
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
struct sigaction {int sa_flags; int sa_mask; int sa_sigaction; } ;
struct itimerval {struct timeval it_value; int it_interval; } ;
typedef int MMAL_STATUS_T ;


 int ITIMER_REAL ;
 int MMAL_SUCCESS ;
 int SA_SIGINFO ;
 int SIGALRM ;
 int atoi (char const*) ;
 int autosusp_signal ;
 int autosusp_timeout_handler ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int memset (struct sigaction*,int ,int) ;
 int mmal_vc_release () ;
 int mmal_vc_use () ;
 int perror (char*) ;
 int printf (char*,...) ;
 int setitimer (int ,struct itimerval*,int *) ;
 scalar_t__ sigaction (int ,struct sigaction*,int ) ;
 int sigemptyset (int *) ;
 int stderr ;
 int usleep (long) ;

__attribute__((used)) static int do_autosusptest(int argc, const char **argv)
{
   long timeout;
   struct timeval interval;
   MMAL_STATUS_T status;

   if (argc != 4)
   {
      printf("usage: %s autosusp <timeout-ms> <signal>\n",
             argv[0]);
      printf("   e.g. 650 9\n");
      exit(1);
   }
   timeout = 1000 * atoi(argv[2]);
   autosusp_signal = atoi(argv[3]);

   if ((status=mmal_vc_use()) != MMAL_SUCCESS)
   {
      fprintf(stderr,"mmal_vc_use failed: %d\n", status);
      exit(1);
   }


   struct sigaction sa;
   memset(&sa, 0, sizeof(struct sigaction));
   sa.sa_sigaction = autosusp_timeout_handler;
   sigemptyset(&sa.sa_mask);
   sa.sa_flags = SA_SIGINFO;
   if (sigaction(SIGALRM, &sa, 0))
   {
      perror("sigaction");
      exit(1);
   }


   interval.tv_sec = timeout / 1000000;
   interval.tv_usec = timeout % 1000000;

   struct itimerval alarm_spec = {
     .it_interval = {0,0},
     .it_value = interval
   };

   int rc = setitimer(ITIMER_REAL, &alarm_spec, ((void*)0));
   if (rc < 0)
   {
      perror("setitimer failed");
      exit(1);
   }

   usleep(timeout + 1000000);
   printf("%s: not killed by timer\n", argv[0]);
   mmal_vc_release();

   return 0;
}
