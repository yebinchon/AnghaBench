
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERROR (char*) ;
 int exit (int) ;
 int stop ;
 int stopped_already ;

__attribute__((used)) static void test_signal_handler(int signum)
{
   (void)signum;

   if (stopped_already)
   {
      LOG_ERROR("Killing program");
      exit(255);
   }
   else
   {
      LOG_ERROR("Stopping normally. CTRL+C again to kill program");
      stop = 1;
      stopped_already = 1;
   }
}
