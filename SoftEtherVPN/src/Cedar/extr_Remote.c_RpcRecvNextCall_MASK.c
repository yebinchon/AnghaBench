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
typedef  int UINT ;
struct TYPE_17__ {int Size; int* Buf; } ;
struct TYPE_16__ {TYPE_1__* Sock; } ;
struct TYPE_15__ {int /*<<< orphan*/  SecureMode; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ RPC ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int MAX_PACK_SIZE ; 
 void* FUNC6 (int,int) ; 
 TYPE_3__* FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int*,int) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,void*,int) ; 

bool FUNC15(RPC *r)
{
	UINT size;
	void *tmp;
	SOCK *s;
	BUF *b;
	PACK *p;
	PACK *ret;
	// Validate arguments
	if (r == NULL)
	{
		return false;
	}

	s = r->Sock;

	if (FUNC10(s, &size, sizeof(UINT), s->SecureMode) == false)
	{
		return false;
	}

	size = FUNC2(size);

	if (size > MAX_PACK_SIZE)
	{
		return false;
	}

	tmp = FUNC6(size, true);

	if (FUNC10(s, tmp, size, s->SecureMode) == false)
	{
		FUNC3(tmp);
		return false;
	}

	b = FUNC7();
	FUNC14(b, tmp, size);
	FUNC11(b, 0, 0);
	FUNC3(tmp);

	p = FUNC0(b);
	FUNC4(b);

	if (p == NULL)
	{
		return false;
	}

	ret = FUNC1(r, p);
	FUNC5(p);

	if (ret == NULL)
	{
		ret = FUNC8(ERR_NOT_SUPPORTED);
	}

	b = FUNC9(ret);
	FUNC5(ret);

	size = FUNC2(b->Size);
	FUNC12(s, &size, sizeof(UINT));
	FUNC12(s, b->Buf, b->Size);

	if (FUNC13(s, s->SecureMode) == false)
	{
		FUNC4(b);
		return false;
	}

	FUNC4(b);

	return true;
}