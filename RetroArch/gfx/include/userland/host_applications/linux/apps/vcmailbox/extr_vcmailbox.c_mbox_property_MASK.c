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
 int /*<<< orphan*/  IOCTL_MBOX_PROPERTY ; 
 int FUNC0 (int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(int file_desc, void *buf)
{
   int ret_val = FUNC0(file_desc, IOCTL_MBOX_PROPERTY, buf);

   if (ret_val < 0) {
      FUNC1("ioctl_set_msg failed:%d\n", ret_val);
   }
   return ret_val;
}