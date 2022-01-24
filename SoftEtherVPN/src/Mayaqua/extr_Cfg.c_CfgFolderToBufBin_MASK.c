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
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {int Size; scalar_t__ Buf; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * TAG_BINARY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

BUF *FUNC5(FOLDER *f)
{
	BUF *b;
	UCHAR hash[SHA1_SIZE];
	// Validate arguments
	if (f == NULL)
	{
		return NULL;
	}

	b = FUNC1();

	// Header
	FUNC3(b, TAG_BINARY, 8);

	// Hash area
	FUNC4(hash, sizeof(hash));
	FUNC3(b, hash, sizeof(hash));

	// Output the root folder (recursive)
	FUNC0(b, f);

	// Hash
	FUNC2(((UCHAR *)b->Buf) + 8, ((UCHAR *)b->Buf) + 8 + SHA1_SIZE, b->Size - 8 - SHA1_SIZE);

	return b;
}