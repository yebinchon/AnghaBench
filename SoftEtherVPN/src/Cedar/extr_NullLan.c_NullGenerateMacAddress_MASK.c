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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int UCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

void FUNC8(UCHAR *mac, UINT id, UINT seq)
{
	UCHAR hash[SHA1_SIZE];
	char name[MAX_SIZE];
	BUF *b;
	// Validate arguments
	if (mac == NULL)
	{
		return;
	}

	b = FUNC4();
	FUNC6(b, id);
	FUNC6(b, seq);
	FUNC2(name, sizeof(name));
#ifdef	OS_WIN32
	WriteBufInt(b, MsGetCurrentProcessId());
#endif	// OS_WIN32
	FUNC7(b, name);

	FUNC5(hash, b->Buf, b->Size);

	FUNC1(b);

	FUNC0(mac, hash, 6);
	mac[0] = 0x7E;
}