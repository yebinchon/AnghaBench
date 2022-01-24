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
typedef  int /*<<< orphan*/  machine_name ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int MAX_SIZE ; 
 TYPE_1__* FUNC3 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

void FUNC9(UCHAR *dst_last_2, UCHAR *src_mac_addr_4)
{
	char machine_name[MAX_SIZE];
	BUF *b;
	UCHAR hash[SHA1_SIZE];
	// Validate arguments
	if (dst_last_2 == NULL || src_mac_addr_4 == NULL)
	{
		return;
	}

	FUNC2(machine_name, sizeof(machine_name));

	FUNC6(machine_name);
	FUNC5(machine_name);

	b = FUNC3();
	FUNC7(b, src_mac_addr_4, 4);
	FUNC8(b, machine_name);

	FUNC4(hash, b->Buf, b->Size);

	FUNC1(b);

	FUNC0(dst_last_2, hash, 2);
}