
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int stderr ;
 int stdout ;
 int wiiu_log_deinit () ;

__attribute__((used)) static void deinit_logging(void)
{
   fflush(stdout);
   fflush(stderr);

   wiiu_log_deinit();
}
