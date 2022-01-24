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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  PLATFORM_SEMAPHORE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int,int) ; 

VCOS_STATUS_T FUNC2(PLATFORM_SEMAPHORE_T *sem, int name[3], int count)
{
   char buf[64];
   FUNC1(buf,sizeof(buf),"KhanSemaphore%08x%08x%08x", name[0], name[1], name[2]);
   return FUNC0(sem, buf, count);
}