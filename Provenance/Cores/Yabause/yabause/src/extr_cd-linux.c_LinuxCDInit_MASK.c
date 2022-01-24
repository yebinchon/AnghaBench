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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int hCDROM ; 
 int FUNC1 (char const*,int) ; 

__attribute__((used)) static int FUNC2(const char * cdrom_name) {
	if ((hCDROM = FUNC1(cdrom_name, O_RDONLY | O_NONBLOCK)) == -1) {
		return -1;
	}
	FUNC0("CDInit (%s) OK\n", cdrom_name);
	return 0;
}