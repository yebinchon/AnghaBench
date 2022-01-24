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
typedef  int /*<<< orphan*/  tmp ;
typedef  int UINT ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 

void FUNC2(char *dst, UINT size, char *src)
{
	char tmp[MAX_PATH];
	// Validate arguments
	if (dst == NULL || src == NULL)
	{
		return;
	}

	FUNC1(tmp, sizeof(tmp), src);
	FUNC0(tmp, sizeof(tmp), tmp, "..", "__", false);
	FUNC0(tmp, sizeof(tmp), tmp, "/", "_", false);
	FUNC0(tmp, sizeof(tmp), tmp, "\\", "_", false);
	FUNC0(tmp, sizeof(tmp), tmp, "@", "_", false);
	FUNC0(tmp, sizeof(tmp), tmp, "|", "_", false);

	FUNC1(dst, size, tmp);
}