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
struct TYPE_6__ {scalar_t__ Size; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (char*) ; 

BUF *FUNC7(char *str)
{
	// Validate arguments
	if (FUNC1(str))
	{
		return NULL;
	}

	if (FUNC4(str, "0x"))
	{
		BUF *buf = FUNC6(str + 2);

		if (buf == NULL || buf->Size == 0)
		{
			FUNC0(buf);
			return NULL;
		}

		return buf;
	}
	else
	{
		BUF *buf;
		UCHAR hash[MD5_SIZE];

		FUNC2(hash, str, FUNC5(str));

		buf = FUNC3(hash, sizeof(hash));

		return buf;
	}
}