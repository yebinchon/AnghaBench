#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_15__ {int /*<<< orphan*/ * MacAddress; int /*<<< orphan*/  Name; int /*<<< orphan*/  Enabled; } ;
typedef  TYPE_2__ UNIX_VLAN ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_18__ {int Size; int /*<<< orphan*/ * Buf; } ;
struct TYPE_14__ {int /*<<< orphan*/  NicDownOnDisconnect; } ;
struct TYPE_17__ {TYPE_1__ Config; int /*<<< orphan*/  UnixVLanList; } ;
struct TYPE_16__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_3__ FOLDER ;
typedef  TYPE_4__ CLIENT ;
typedef  TYPE_5__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int FUNC2 (TYPE_3__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC9 (int) ; 

void FUNC10(CLIENT *c, FOLDER *f)
{
	char tmp[MAX_SIZE];
	UCHAR addr[6];
	BUF *b;
	UNIX_VLAN *v;
	// Validate arguments
	if (c == NULL || f == NULL)
	{
		return;
	}

	if (FUNC2(f, "MacAddress", tmp, sizeof(tmp)) == false)
	{
		return;
	}

	b = FUNC7(tmp);
	if (b == NULL)
	{
		return;
	}

	if (b->Size != 6)
	{
		FUNC4(b);
		return;
	}

	FUNC3(addr, b->Buf, 6);

	FUNC4(b);

	if (FUNC5(addr, 6))
	{
		return;
	}

	v = FUNC9(sizeof(UNIX_VLAN));
	FUNC3(v->MacAddress, addr, 6);
	FUNC6(v->Name, sizeof(v->Name), f->Name);
	v->Enabled = FUNC1(f, "Enabled");

	FUNC0(c->UnixVLanList, v);

#ifdef	OS_UNIX
	UnixVLanCreate(v->Name, v->MacAddress, !c->Config.NicDownOnDisconnect);
#endif	// OS_UNIX
}