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
struct timeval {long tv_sec; scalar_t__ tv_usec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct timeval FUNC1(void)
{
  /*
  ** time() returns the value of time in seconds since the Epoch.
  */
  struct timeval now;
  now.tv_sec = (long)FUNC0(NULL);
  now.tv_usec = 0;
  return now;
}