#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int Size; int /*<<< orphan*/ * Buf; } ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

bool FUNC3(IO *o, BUF *b)
{
	UCHAR hash[MD5_SIZE];
	UINT size;

	// Validate arguments
	if (o == NULL || b == NULL)
	{
		return false;
	}

	// Hash the data
	FUNC2(hash, b->Buf, b->Size);

	size = FUNC0(b->Size);

	// Write the size
	if (FUNC1(o, &size, sizeof(size)) == false)
	{
		return false;
	}

	// Write a hash
	if (FUNC1(o, hash, sizeof(hash)) == false)
	{
		return false;
	}

	// Write the data
	if (FUNC1(o, b->Buf, b->Size) == false)
	{
		return false;
	}

	return true;
}