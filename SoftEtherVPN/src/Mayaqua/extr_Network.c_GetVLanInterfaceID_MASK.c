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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

UINT FUNC2(char *tag_name)
{
	UINT ret = 0;
#ifdef	OS_WIN32
	ret = Win32GetVLanInterfaceID(tag_name);
#else	// OS_WIN32
	ret = FUNC0(tag_name);
#endif	// OS_WIN32
	return ret;
}