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
typedef  scalar_t__ UINT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC0 (char*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char*) ; 

bool FUNC2(char *product_code, char *name, char *buf, UINT size)
{
	UINT ret;
	char tmp[MAX_SIZE];
	DWORD sz;
	// Validate arguments
	if (product_code == NULL || name == NULL || buf == NULL)
	{
		return false;
	}

	sz = sizeof(tmp);

	ret = FUNC0(product_code, name, tmp, &sz);
	if (ret != ERROR_SUCCESS)
	{
		return false;
	}

	FUNC1(buf, size, tmp);

	return true;
}