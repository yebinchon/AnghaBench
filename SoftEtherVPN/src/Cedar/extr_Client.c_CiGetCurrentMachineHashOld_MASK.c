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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int MAX_PATH ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  REG_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(void *data)
{
	char name[MAX_PATH];
	char *product_id = NULL;
	// Validate arguments
	if (data == NULL)
	{
		return;
	}

#ifdef	OS_WIN32
	// Product ID
	product_id = MsRegReadStr(REG_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion", "ProductId");
	if (product_id == NULL)
	{
		product_id = MsRegReadStr(REG_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion", "ProductId");
	}

	StrCpy(name, sizeof(name), product_id);

	Free(product_id);

#else	// OS_WIN32
	FUNC1(name, sizeof(name));
#endif	// OS_WIN32

	FUNC7(name);
	FUNC6(name);

	FUNC3(data, name, FUNC5(name));
}