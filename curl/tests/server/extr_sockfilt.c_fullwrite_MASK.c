#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ssize_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int errno ; 
 scalar_t__ got_exit_signal ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ verbose ; 
 int FUNC2 (int,unsigned char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(int filedes, const void *buffer, size_t nbytes)
{
  int error;
  ssize_t nwrite = 0;

  do {
    ssize_t wc = FUNC2(filedes, (const unsigned char *)buffer + nwrite,
                       nbytes - nwrite);

    if(got_exit_signal) {
      FUNC0("signalled to die");
      return -1;
    }

    if(wc < 0) {
      error = errno;
      if((error == EINTR) || (error == EAGAIN))
        continue;
      FUNC0("writing to file descriptor: %d,", filedes);
      FUNC0("unrecoverable write() failure: (%d) %s",
             error, FUNC1(error));
      return -1;
    }

    if(wc == 0) {
      FUNC0("put 0 writing to stdout");
      return 0;
    }

    nwrite += wc;

  } while((size_t)nwrite < nbytes);

  if(verbose)
    FUNC0("wrote %zd bytes", nwrite);

  return nwrite;
}