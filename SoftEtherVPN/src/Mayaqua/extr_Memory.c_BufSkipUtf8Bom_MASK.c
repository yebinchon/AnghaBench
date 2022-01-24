#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UCHAR ;
struct TYPE_5__ {int Size; int* Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

bool FUNC2(BUF *b)
{
	if (b == NULL)
	{
		return false;
	}

	FUNC1(b);

	if (b->Size >= 3)
	{
		UCHAR *data = b->Buf;

		if (data[0] == 0xEF && data[1] == 0xBB && data[2] == 0xBF)
		{
			FUNC0(b, 3, 1);

			return true;
		}
	}

	return false;
}