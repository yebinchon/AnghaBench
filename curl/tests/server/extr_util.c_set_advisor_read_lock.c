
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINTR ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int logmsg (char*,char const*,int,int ) ;
 int strerror (int) ;

void set_advisor_read_lock(const char *filename)
{
  FILE *lockfile;
  int error = 0;
  int res;

  do {
    lockfile = fopen(filename, "wb");
  } while((lockfile == ((void*)0)) && ((error = errno) == EINTR));
  if(lockfile == ((void*)0)) {
    logmsg("Error creating lock file %s error: %d %s",
           filename, error, strerror(error));
    return;
  }

  do {
    res = fclose(lockfile);
  } while(res && ((error = errno) == EINTR));
  if(res)
    logmsg("Error closing lock file %s error: %d %s",
           filename, error, strerror(error));
}
