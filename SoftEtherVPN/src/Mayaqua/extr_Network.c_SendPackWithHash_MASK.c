#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {int Size; int /*<<< orphan*/ * Buf; } ;
struct TYPE_8__ {scalar_t__ Type; int /*<<< orphan*/  SecureMode; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 scalar_t__ SOCK_TCP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

bool FUNC6(SOCK *s, PACK *p)
{
	BUF *b;
	UINT sz;
	UCHAR hash[SHA1_SIZE];
	// Validate arguments
	if (s == NULL || p == NULL || s->Type != SOCK_TCP)
	{
		return false;
	}

	b = FUNC2(p);
	sz = FUNC0(b->Size);

	FUNC3(s, &sz, sizeof(UINT));
	FUNC3(s, b->Buf, b->Size);
	FUNC5(hash, b->Buf, b->Size);
	FUNC3(s, hash, sizeof(hash));

	FUNC1(b);

	return FUNC4(s, s->SecureMode);
}