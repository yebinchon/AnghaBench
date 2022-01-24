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
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,char*,size_t) ; 

int FUNC6(int fd, char *ptr, int nbytes) {
  int nread, nready, nleft = nbytes;

  fd_set         fset;
  struct timeval tv;

  while (nleft > 0) {
    tv.tv_sec = 30;
    tv.tv_usec = 0;
    FUNC1(&fset);
    FUNC0(fd, &fset);
    if ((nready = FUNC3(fd + 1, NULL, &fset, NULL, &tv)) == 0) {
      errno = ETIMEDOUT;
      FUNC2("fd %d timeout\n", fd);
      break;
    } else if (nready < 0) {
      if (errno == EINTR) continue;
      FUNC2("select error, %d (%s)", errno, FUNC4(errno));
      return -1;
    }

    if ((nread = (int)FUNC5(fd, ptr, (size_t)nleft)) < 0) {
      if (errno == EINTR) continue;
      FUNC2("read error, %d (%s)", errno, FUNC4(errno));
      return -1;

    } else if (nread == 0) {
      FUNC2("fd %d EOF", fd);
      break;  // EOF
    }

    nleft -= nread;
    ptr += nread;
  }

  return (nbytes - nleft);
}