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

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(int sock, int on) {
  int flags = 0;
  if ((flags = FUNC0(sock, F_GETFL, 0)) < 0) {
    FUNC1("fcntl(F_GETFL) error: %d (%s)\n", errno, FUNC2(errno));
    return 1;
  }

  if (on)
    flags |= O_NONBLOCK;
  else
    flags &= ~O_NONBLOCK;

  if ((flags = FUNC0(sock, F_SETFL, flags)) < 0) {
    FUNC1("fcntl(F_SETFL) error: %d (%s)\n", errno, FUNC2(errno));
    return 1;
  }

  return 0;
}