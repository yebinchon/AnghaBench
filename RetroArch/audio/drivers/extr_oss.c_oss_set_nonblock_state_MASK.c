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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC2(void *data, bool state)
{
   int rc;
   int *fd = (int*)data;

   if (state)
      rc = FUNC1(*fd, F_SETFL, FUNC1(*fd, F_GETFL) | O_NONBLOCK);
   else
      rc = FUNC1(*fd, F_SETFL, FUNC1(*fd, F_GETFL) & (~O_NONBLOCK));
   if (rc != 0)
      FUNC0("Could not set nonblocking on OSS file descriptor. Will not be able to fast-forward.\n");
}