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
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t WPC_DATA_ENTRY_SIZE ; 

void FUNC4(char *dst, char *name)
{
	UINT i, len;
	char tmp[MAX_SIZE];
	// Validate arguments
	if (dst == NULL || name == NULL)
	{
		return;
	}

	FUNC1(tmp, sizeof(tmp), name);
	FUNC3(tmp);
	len = FUNC2(tmp);

	for (i = 0;i < WPC_DATA_ENTRY_SIZE;i++)
	{
		dst[i] = ' ';
	}

	if (len <= WPC_DATA_ENTRY_SIZE)
	{
		FUNC0(dst, tmp, len);
	}
	else
	{
		FUNC0(dst, tmp, WPC_DATA_ENTRY_SIZE);
	}
}