#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  machine_name ;
typedef  int /*<<< orphan*/  exe_path ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  char IP ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  REG_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*,int) ; 

void FUNC18(void *hash)
{
	BUF *b;
	LIST *ip_list;
	char machine_name[MAX_SIZE];
	wchar_t exe_path[MAX_PATH];
	char *product_id = NULL;
	// Validate arguments
	if (hash == NULL)
	{
		return;
	}

#ifdef	OS_WIN32
	product_id = MsRegReadStr(REG_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion", "ProductId");
	if (product_id == NULL)
	{
		product_id = MsRegReadStr(REG_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion", "ProductId");
	}
#endif	// OS_WIN32

	b = FUNC9();

	FUNC5(machine_name, sizeof(machine_name));
	FUNC13(machine_name);
	FUNC12(machine_name);

	FUNC3(exe_path, sizeof(exe_path));
	FUNC16(exe_path);
	FUNC15(exe_path);

	FUNC17(b, machine_name, FUNC11(machine_name));
	FUNC17(b, exe_path, FUNC14(exe_path));
	FUNC17(b, product_id, FUNC11(product_id));

	ip_list = FUNC4();
	if (ip_list != NULL)
	{
		UINT i;
		for (i = 0;i < FUNC7(ip_list);i++)
		{
			IP *ip = FUNC6(ip_list, i);

			FUNC17(b, ip, sizeof(IP));
		}
	}
	FUNC2(ip_list);

	FUNC10(hash, b->Buf, b->Size);

	FUNC1(b);

	FUNC0(product_id);
}