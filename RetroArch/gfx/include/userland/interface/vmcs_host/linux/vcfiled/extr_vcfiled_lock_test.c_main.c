
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int logmsg ;
 int printf (char*,char const*) ;
 int sleep (int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int usage (char const*) ;
 scalar_t__ vcfiled_is_running (char const*) ;
 int vcfiled_lock (char const*,int ) ;

int main(int argc, const char **argv)
{
   if (argc != 3)
   {
      usage(argv[0]);
   }
   const char *lockfile = argv[2];
   if (strcmp(argv[1], "lock") == 0)
   {
      int rc = vcfiled_lock(lockfile, logmsg);
      if (rc)
      {
         printf("failed to lock %s\n", lockfile);
         exit(1);
      }
      sleep(300);
   }
   else if (strcmp(argv[1], "check") == 0)
   {
      printf("%s\n",
             vcfiled_is_running(lockfile) ?
             "running" : "not running");
   }
   else
   {
      usage(argv[0]);
   }
   return 0;
}
