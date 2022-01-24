#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  UINT64 ;
struct TYPE_9__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_8__ {char OsType; char* KernelName; char* KernelVersion; char* OsProductName; char OsServicePack; char* OsSystemName; char* OsVendorName; char* OsVersion; } ;
typedef  TYPE_1__ OS_INFO ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__* FUNC3 () ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC9(void *data)
{
	BUF *b;
	char name[64];
	OS_INFO *osinfo;
	UINT64 iphash = 0;
	// Validate arguments
	if (data == NULL)
	{
		return;
	}

	iphash = FUNC1();

	b = FUNC4();
	FUNC2(name, sizeof(name));

	osinfo = FUNC3();

	FUNC7(b, name, FUNC6(name));

	FUNC8(b, iphash);

	FUNC7(b, &osinfo->OsType, sizeof(osinfo->OsType));
	FUNC7(b, osinfo->KernelName, FUNC6(osinfo->KernelName));
	FUNC7(b, osinfo->KernelVersion, FUNC6(osinfo->KernelVersion));
	FUNC7(b, osinfo->OsProductName, FUNC6(osinfo->OsProductName));
	FUNC7(b, &osinfo->OsServicePack, sizeof(osinfo->OsServicePack));
	FUNC7(b, osinfo->OsSystemName, FUNC6(osinfo->OsSystemName));
	FUNC7(b, osinfo->OsVendorName, FUNC6(osinfo->OsVendorName));
	FUNC7(b, osinfo->OsVersion, FUNC6(osinfo->OsVersion));

	FUNC5(data, b->Buf, b->Size);

	FUNC0(b);
}