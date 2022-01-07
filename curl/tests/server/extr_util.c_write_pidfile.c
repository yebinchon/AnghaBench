
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,long) ;
 scalar_t__ getpid () ;
 int logmsg (char*,...) ;
 int strerror (int ) ;

int write_pidfile(const char *filename)
{
  FILE *pidfile;
  long pid;

  pid = (long)getpid();
  pidfile = fopen(filename, "wb");
  if(!pidfile) {
    logmsg("Couldn't write pid file: %s %s", filename, strerror(errno));
    return 0;
  }
  fprintf(pidfile, "%ld\n", pid);
  fclose(pidfile);
  logmsg("Wrote pid %ld to %s", pid, filename);
  return 1;
}
