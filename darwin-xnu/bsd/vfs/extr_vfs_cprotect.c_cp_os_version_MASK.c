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
typedef  int cp_key_os_version_t ;

/* Variables and functions */
 char* osversion ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

cp_key_os_version_t
FUNC2(void)
{
	static cp_key_os_version_t cp_os_version;

	if (cp_os_version)
		return cp_os_version;

	if (!osversion[0])
		return 0;

	cp_os_version = FUNC0(osversion);
	if (!cp_os_version) {
		FUNC1("cp_os_version: unable to parse osversion `%s'\n", osversion);
		cp_os_version = 1;
	}

	return cp_os_version;
}