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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int mixerdev ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(void)
{
	if (mixerdev >= 0) FUNC0(mixerdev);
  	mixerdev = FUNC1("/dev/mixer", O_RDWR);
	if (mixerdev == -1)
	{
		FUNC2("open(\"/dev/mixer\")");
	}

	return 0;
}