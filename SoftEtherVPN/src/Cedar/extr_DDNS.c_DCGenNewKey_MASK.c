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
typedef  int /*<<< orphan*/  rand ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC10(UCHAR *key)
{
	BUF *b;
	UINT64 tick;
	UCHAR hash[SHA1_SIZE];
	UCHAR rand[SHA1_SIZE];
	UINT i;
	// Validate arguments
	if (key == NULL)
	{
		return;
	}

	b = FUNC2();

	FUNC3(rand, sizeof(rand));
	FUNC8(b, rand, sizeof(rand));

	tick = FUNC7();
	FUNC9(b, tick);

	tick = FUNC6();
	FUNC9(b, tick);

	tick = FUNC5();
	FUNC9(b, tick);

	FUNC1(hash);
	FUNC8(b, hash, sizeof(hash));

	FUNC4(key, b->Buf, b->Size);
	FUNC3(rand, sizeof(rand));

	for (i = 0;i < SHA1_SIZE;i++)
	{
		key[i] = key[i] ^ rand[i];
	}

	FUNC0(b);
}