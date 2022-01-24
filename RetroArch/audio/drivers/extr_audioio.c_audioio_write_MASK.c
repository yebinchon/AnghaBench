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
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  F_GETFL ; 
 int O_NONBLOCK ; 
 scalar_t__ errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,void const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(void *data, const void *buf, size_t size)
{
   ssize_t ret;
   int *fd = (int*)data;

   if (size == 0)
      return 0;

   if ((ret = FUNC1(*fd, buf, size)) < 0)
   {
      if (errno == EAGAIN && (FUNC0(*fd, F_GETFL) & O_NONBLOCK))
         return 0;

      return -1;
   }

   return ret;
}