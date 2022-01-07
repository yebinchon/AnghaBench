
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int FALSE ;
 int TRUE ;
 int fileno (int ) ;
 scalar_t__ fullread (int ,void*,size_t) ;
 int logmsg (char*) ;
 int stdin ;

__attribute__((used)) static bool read_stdin(void *buffer, size_t nbytes)
{
  ssize_t nread = fullread(fileno(stdin), buffer, nbytes);
  if(nread != (ssize_t)nbytes) {
    logmsg("exiting...");
    return FALSE;
  }
  return TRUE;
}
