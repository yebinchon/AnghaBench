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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_9__ {int /*<<< orphan*/  DummyMark; int /*<<< orphan*/  DummyDestIP; int /*<<< orphan*/  DummySrcIp; } ;
typedef  int /*<<< orphan*/  PRAND ;
typedef  TYPE_1__ IPTABLES_ENTRY ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 

void FUNC9(void *hash_seed, IPTABLES_ENTRY *e, UINT id)
{
	PRAND *p;
	BUF *b;
	if (hash_seed == NULL || e == NULL)
	{
		return;
	}

	b = FUNC4();
	FUNC7(b, id);
	FUNC6(b, hash_seed, SHA1_SIZE);
	FUNC8(b, "20151002");

	p = FUNC5(b->Buf, b->Size);
	FUNC0(b);

	FUNC2(p, &e->DummySrcIp);
	FUNC2(p, &e->DummyDestIP);
	e->DummyMark = FUNC3(p);

	FUNC1(p);
}