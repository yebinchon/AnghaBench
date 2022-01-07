
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int errno ;
 int logmsg (char*,char const*,int,int ) ;
 int strerror (int) ;
 int unlink (char const*) ;

void clear_advisor_read_lock(const char *filename)
{
  int error = 0;
  int res;







  do {
    res = unlink(filename);
  } while(res && ((error = errno) == EINTR));
  if(res)
    logmsg("Error removing lock file %s error: %d %s",
           filename, error, strerror(error));
}
