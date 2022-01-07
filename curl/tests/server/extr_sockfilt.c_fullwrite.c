
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EAGAIN ;
 int EINTR ;
 int errno ;
 scalar_t__ got_exit_signal ;
 int logmsg (char*,...) ;
 int strerror (int) ;
 scalar_t__ verbose ;
 int write (int,unsigned char const*,size_t) ;

__attribute__((used)) static ssize_t fullwrite(int filedes, const void *buffer, size_t nbytes)
{
  int error;
  ssize_t nwrite = 0;

  do {
    ssize_t wc = write(filedes, (const unsigned char *)buffer + nwrite,
                       nbytes - nwrite);

    if(got_exit_signal) {
      logmsg("signalled to die");
      return -1;
    }

    if(wc < 0) {
      error = errno;
      if((error == EINTR) || (error == EAGAIN))
        continue;
      logmsg("writing to file descriptor: %d,", filedes);
      logmsg("unrecoverable write() failure: (%d) %s",
             error, strerror(error));
      return -1;
    }

    if(wc == 0) {
      logmsg("put 0 writing to stdout");
      return 0;
    }

    nwrite += wc;

  } while((size_t)nwrite < nbytes);

  if(verbose)
    logmsg("wrote %zd bytes", nwrite);

  return nwrite;
}
