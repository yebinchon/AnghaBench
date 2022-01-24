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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  VC_CMA_IOC_RESERVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(int reserve, int delay)
{
   int fd = FUNC2("/dev/vc-cma", O_RDWR);
   int rc = -1;
   if (fd >= 0)
   {
      rc = FUNC1(fd, VC_CMA_IOC_RESERVE, reserve);
      if (rc == 0)
      {
         FUNC3("Sleeping for %d seconds...\n", delay);
         FUNC4(delay);
      }
      else
         FUNC3("* failed to ioctl /dev/vc-cma - rc %d\n", rc);
      FUNC0(fd);
   }
   else
      FUNC3("* failed to open /dev/vc-cma - rc %d\n", fd);
}