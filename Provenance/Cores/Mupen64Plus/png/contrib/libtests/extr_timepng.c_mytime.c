
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_PROCESS_CPUTIME_ID ;
 int clock_gettime (int ,struct timespec*) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static int mytime(struct timespec *t)
{

   if (!clock_gettime(CLOCK_PROCESS_CPUTIME_ID, t))
      return 1;

   perror("CLOCK_PROCESS_CPUTIME_ID");
   fprintf(stderr, "timepng: could not get the time\n");
   return 0;
}
