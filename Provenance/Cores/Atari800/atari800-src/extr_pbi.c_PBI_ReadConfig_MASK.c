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
 int FALSE ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int TRUE ; 

int FUNC4(char *string, char *ptr)
{
	if (0) {
	}
#ifdef PBI_XLD
	else if (PBI_XLD_ReadConfig(string, ptr)) {
	}
#endif
#ifdef PBI_MIO
	else if (PBI_MIO_ReadConfig(string, ptr)) {
	}
#endif
#ifdef PBI_BB
	else if (PBI_BB_ReadConfig(string, ptr)) {
	}
#endif
#ifdef PBI_PROTO80
	else if (PBI_PROTO80_ReadConfig(string, ptr)) {
	}
#endif
	else return FALSE; /* no match */
	return TRUE; /* matched something */
}