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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,size_t,int /*<<< orphan*/ ) ; 

ssize_t FUNC2(int fd, bool *error,
      void *data_, size_t size)
{
   const uint8_t *data = (const uint8_t*)data_;
   ssize_t         ret = FUNC1(fd, (char*)data, size, 0);

   if (ret > 0)
      return ret;

   if (ret == 0)
   {
      /* Socket closed */
      *error = true;
      return -1;
   }

   if (FUNC0((int)ret))
      return 0;

   *error = true;
   return -1;
}