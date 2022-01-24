#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {void* KernelVersion; void* KernelName; void* OsVersion; void* OsVendorName; void* OsProductName; void* OsSystemName; void* OsServicePack; void* OsType; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ OS_INFO ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int MAX_SIZE ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(OS_INFO *t, PACK *p)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(t, sizeof(OS_INFO));
	t->OsType = FUNC1(p, "OsType");
	t->OsServicePack = FUNC1(p, "OsServicePack");
	if (FUNC2(p, "OsSystemName", tmp, sizeof(tmp)))
	{
		t->OsSystemName = FUNC0(tmp);
	}
	if (FUNC2(p, "OsProductName", tmp, sizeof(tmp)))
	{
		t->OsProductName = FUNC0(tmp);
	}
	if (FUNC2(p, "OsVendorName", tmp, sizeof(tmp)))
	{
		t->OsVendorName = FUNC0(tmp);
	}
	if (FUNC2(p, "OsVersion", tmp, sizeof(tmp)))
	{
		t->OsVersion = FUNC0(tmp);
	}
	if (FUNC2(p, "KernelName", tmp, sizeof(tmp)))
	{
		t->KernelName = FUNC0(tmp);
	}
	if (FUNC2(p, "KernelVersion", tmp, sizeof(tmp)))
	{
		t->KernelVersion = FUNC0(tmp);
	}
}