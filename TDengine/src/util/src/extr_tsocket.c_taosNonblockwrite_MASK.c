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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC4 (int,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(int fd, char *ptr, int nbytes) {
  FUNC6(fd, 1);

  int            nleft, nwritten, nready;
  fd_set         fset;
  struct timeval tv;

  nleft = nbytes;
  while (nleft > 0) {
    tv.tv_sec = 30;
    tv.tv_usec = 0;
    FUNC1(&fset);
    FUNC0(fd, &fset);
    if ((nready = FUNC3(fd + 1, NULL, &fset, NULL, &tv)) == 0) {
      errno = ETIMEDOUT;
      FUNC2("fd %d timeout, no enough space to write", fd);
      break;

    } else if (nready < 0) {
      if (errno == EINTR) continue;

      FUNC2("select error, %d (%s)", errno, FUNC5(errno));
      return -1;
    }

    nwritten = (int)FUNC4(fd, ptr, (size_t)nleft, MSG_NOSIGNAL);
    if (nwritten <= 0) {
      if (errno == EAGAIN || errno == EINTR) continue;

      FUNC2("write error, %d (%s)", errno, FUNC5(errno));
      return -1;
    }

    nleft -= nwritten;
    ptr += nwritten;
  }

  FUNC6(fd, 0);

  return (nbytes - nleft);
}