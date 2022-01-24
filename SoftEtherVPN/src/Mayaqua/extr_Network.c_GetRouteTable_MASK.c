#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_9__ {size_t NumEntry; size_t** Entry; int /*<<< orphan*/  HashedValue; } ;
typedef  TYPE_1__ ROUTE_TABLE ;
typedef  size_t ROUTE_ENTRY ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t*,int) ; 

ROUTE_TABLE *FUNC7()
{
	ROUTE_TABLE *t = NULL;
	UINT i;
	BUF *buf = FUNC3();
	UCHAR hash[MD5_SIZE];

#ifdef	OS_WIN32
	t = Win32GetRouteTable();
#else	//OS_WIN32
	t = FUNC4();
#endif	// OS_WIN32

	FUNC6(buf, &t->NumEntry, sizeof(t->NumEntry));

	for (i = 0;i < t->NumEntry;i++)
	{
		ROUTE_ENTRY *e = t->Entry[i];

		FUNC6(buf, e, sizeof(ROUTE_ENTRY));
	}

	FUNC2(hash, buf->Buf, buf->Size);

	FUNC1(buf);

	FUNC0(&t->HashedValue, hash, sizeof(t->HashedValue));

	return t;
}