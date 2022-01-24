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
struct timeval {long tv_sec; long tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int FUNC3(curl_socket_t sockfd, int for_recv, long timeout_ms)
{
  struct timeval tv;
  fd_set infd, outfd, errfd;
  int res;

  tv.tv_sec = timeout_ms / 1000;
  tv.tv_usec = (timeout_ms % 1000) * 1000;

  FUNC1(&infd);
  FUNC1(&outfd);
  FUNC1(&errfd);

  FUNC0(sockfd, &errfd); /* always check for error */

  if(for_recv) {
    FUNC0(sockfd, &infd);
  }
  else {
    FUNC0(sockfd, &outfd);
  }

  /* select() returns the number of signalled sockets or -1 */
  res = FUNC2((int)sockfd + 1, &infd, &outfd, &errfd, &tv);
  return res;
}