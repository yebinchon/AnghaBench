
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int FALSE ;
 int TRUE ;
 int fileno (int ) ;
 scalar_t__ fullwrite (int ,void const*,size_t) ;
 int logmsg (char*) ;
 int stdout ;

__attribute__((used)) static bool write_stdout(const void *buffer, size_t nbytes)
{
  ssize_t nwrite = fullwrite(fileno(stdout), buffer, nbytes);
  if(nwrite != (ssize_t)nbytes) {
    logmsg("exiting...");
    return FALSE;
  }
  return TRUE;
}
