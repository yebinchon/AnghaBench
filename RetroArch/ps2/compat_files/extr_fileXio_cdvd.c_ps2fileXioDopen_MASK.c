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
typedef  enum BootDeviceIDs { ____Placeholder_BootDeviceIDs } BootDeviceIDs ;

/* Variables and functions */
 int BOOT_DEVICE_CDFS ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char*) ; 

int FUNC3(const char *name)
{
   enum BootDeviceIDs deviceID = FUNC2((char *)name);
   int fd = -1;
   if (deviceID == BOOT_DEVICE_CDFS) {
      fd = FUNC0(name);
   } else {
      fd = FUNC1(name);
   }

   return fd;
}