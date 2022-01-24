#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  machine_name ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  exe_path ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_LOCAL_MACHINE ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 

SOCK *FUNC16(bool ipv6, IP *ip, UINT num_retry, UCHAR rand_port_id)
{
	BUF *b;
	char machine_name[MAX_SIZE];
	wchar_t exe_path[MAX_PATH];
	char *product_id = NULL;
	UCHAR hash[SHA1_SIZE];

#ifdef	OS_WIN32
	product_id = MsRegReadStr(REG_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion", "ProductId");
	if (product_id == NULL)
	{
		product_id = MsRegReadStr(REG_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion", "ProductId");
	}
#endif	// OS_WIN32

	b = FUNC5();

	FUNC3(machine_name, sizeof(machine_name));
	FUNC10(machine_name);
	FUNC9(machine_name);

	FUNC2(exe_path, sizeof(exe_path));
	FUNC13(exe_path);
	FUNC12(exe_path);

	FUNC14(b, machine_name, FUNC8(machine_name));
	FUNC14(b, exe_path, FUNC11(exe_path));
	FUNC14(b, product_id, FUNC8(product_id));
	FUNC15(b, rand_port_id);
	//WriteBufInt(b, GetHostIPAddressHash32());

	FUNC7(hash, b->Buf, b->Size);

	FUNC1(b);

	FUNC0(product_id);

	return FUNC6(ipv6, ip, hash, sizeof(hash), num_retry);
}