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
typedef  int UINT ;
typedef  char UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (int) ; 

void FUNC4(UCHAR *dst, char *password)
{
	UCHAR *tmp;
	UINT tmp_size;
	UINT i, len;
	// Validate arguments
	if (dst == NULL || password == NULL)
	{
		return;
	}

	// Generate a Unicode password
	len = FUNC2(password);
	tmp_size = len * 2;

	tmp = FUNC3(tmp_size);

	for (i = 0;i < len;i++)
	{
		tmp[i * 2] = password[i];
	}

	// Hashing
	FUNC1(dst, tmp, tmp_size);

	FUNC0(tmp);
}