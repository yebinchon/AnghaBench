#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_16__ {TYPE_1__* ClientAuth; } ;
struct TYPE_15__ {scalar_t__ AuthType; int /*<<< orphan*/  Username; int /*<<< orphan*/  PlainPassword; int /*<<< orphan*/  HashedPassword; } ;
typedef  TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 scalar_t__ CLIENT_AUTHTYPE_PASSWORD ; 
 scalar_t__ CLIENT_AUTHTYPE_PLAIN_PASSWORD ; 
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

bool FUNC10(BUF *b)
{
	RPC_CLIENT_CREATE_ACCOUNT *a;
	BUF *b2;
	bool ret = false;
	// Validate arguments
	if (b == NULL)
	{
		return false;
	}

	a = FUNC1(b);
	if (a == NULL)
	{
		return false;
	}

	if (a->ClientAuth->AuthType == CLIENT_AUTHTYPE_PASSWORD)
	{
		FUNC9(a->ClientAuth->HashedPassword, sizeof(a->ClientAuth->HashedPassword));
		FUNC4(a->ClientAuth->Username, sizeof(a->ClientAuth->Username));
	}
	else if (a->ClientAuth->AuthType == CLIENT_AUTHTYPE_PLAIN_PASSWORD)
	{
		FUNC4(a->ClientAuth->PlainPassword, sizeof(a->ClientAuth->PlainPassword));
		FUNC4(a->ClientAuth->Username, sizeof(a->ClientAuth->Username));
	}

	b2 = FUNC0(a);
	if (b2 != NULL)
	{
		ret = true;

		FUNC3(b);

		FUNC8(b, b2->Buf, b2->Size);
		FUNC7(b, 0, 0);

		FUNC6(b2);
	}

	FUNC2(a);
	FUNC5(a);

	return ret;
}