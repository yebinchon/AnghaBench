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
 int FUNC1 (int,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static ssize_t FUNC3(int filedes, void *buffer, size_t nbytes)
{
  int error;
  ssize_t nread = 0;

  do {
    ssize_t rc = FUNC1(filedes,
                      (unsigned char *)buffer + nread, nbytes - nread);

    if(got_exit_signal) {
      FUNC0("signalled to die");
      return -1;
    }

    if(rc < 0) {
      error = errno;
      if((error == EINTR) || (error == EAGAIN))
        continue;
      FUNC0("reading from file descriptor: %d,", filedes);
      FUNC0("unrecoverable read() failure: (%d) %s",
             error, FUNC2(error));
      return -1;
    }

    if(rc == 0) {
      FUNC0("got 0 reading from stdin");
      return 0;
    }

    nread += rc;

  } while((size_t)nread < nbytes);

  if(verbose)
    FUNC0("read %zd bytes", nread);

  return nread;
}