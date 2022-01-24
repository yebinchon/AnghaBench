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
 char* DEVICE_FILE_NAME ; 
 int MAJOR_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static int FUNC3()
{
   int file_desc;

   // open a char device file used for communicating with kernel mbox driver
   file_desc = FUNC1(DEVICE_FILE_NAME, 0);
   if (file_desc < 0) {
      FUNC2("Can't open device file: %s\n", DEVICE_FILE_NAME);
      FUNC2("Try creating a device file with: sudo mknod %s c %d 0\n", DEVICE_FILE_NAME, MAJOR_NUM);
      FUNC0(-1);
   }
   return file_desc;
}