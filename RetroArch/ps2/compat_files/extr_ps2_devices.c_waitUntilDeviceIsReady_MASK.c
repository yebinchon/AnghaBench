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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int) ; 

bool FUNC4(enum BootDeviceIDs device_id)
{
   int openFile = - 1;
   int retries = 3; /* just in case we tried a unit that is not working/connected */
   char *rootDevice = FUNC3(device_id);

   while(openFile < 0 && retries > 0)
   {
      openFile = FUNC1(rootDevice);
      /* Wait untill the device is ready */
      FUNC2();
      FUNC2();
      FUNC2();
      FUNC2();
      FUNC2();
      FUNC2();
      FUNC2();
      FUNC2();

      retries--;
   };
   if (openFile > 0) {
      FUNC0(openFile);
   }
   
   return openFile >= 0;
}