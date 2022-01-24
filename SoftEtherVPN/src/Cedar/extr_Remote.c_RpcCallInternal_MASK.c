#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_15__ {int /*<<< orphan*/  SecureMode; } ;
struct TYPE_14__ {int Size; int* Buf; } ;
struct TYPE_13__ {TYPE_4__* Sock; } ;
typedef  TYPE_1__ RPC ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int MAX_PACK_SIZE ; 
 void* FUNC4 (int,int) ; 
 TYPE_2__* FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_4__*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int*,int) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,void*,int) ; 

PACK *FUNC12(RPC *r, PACK *p)
{
	BUF *b;
	UINT size;
	PACK *ret;
	void *tmp;
	// Validate arguments
	if (r == NULL || p == NULL)
	{
		return NULL;
	}

	if (r->Sock == NULL)
	{
		return NULL;
	}

	b = FUNC6(p);

	size = FUNC1(b->Size);
	FUNC9(r->Sock, &size, sizeof(UINT));
	FUNC9(r->Sock, b->Buf, b->Size);
	FUNC3(b);

	if (FUNC10(r->Sock, r->Sock->SecureMode) == false)
	{
		return NULL;
	}

	if (FUNC7(r->Sock, &size, sizeof(UINT), r->Sock->SecureMode) == false)
	{
		return NULL;
	}

	size = FUNC1(size);
	if (size > MAX_PACK_SIZE)
	{
		return NULL;
	}

	tmp = FUNC4(size, true);
	if (FUNC7(r->Sock, tmp, size, r->Sock->SecureMode) == false)
	{
		FUNC2(tmp);
		return NULL;
	}

	b = FUNC5();
	FUNC11(b, tmp, size);
	FUNC8(b, 0, 0);
	FUNC2(tmp);

	ret = FUNC0(b);
	if (ret == NULL)
	{
		FUNC3(b);
		return NULL;
	}

	FUNC3(b);

	return ret;
}