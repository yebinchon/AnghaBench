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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

UINT64 FUNC12()
{
	UINT i;
	LIST *o;
	BUF *buf = FUNC8();
	UCHAR hash[SHA1_SIZE];
	UINT64 ret = 0;

	o = FUNC4();

	if (o != NULL)
	{
		for (i = 0;i < FUNC7(o);i++)
		{
			IP *ip = FUNC6(o, i);
			char tmp[128];

			FUNC11(tmp, sizeof(tmp));
			FUNC5(tmp, sizeof(tmp), ip);

			FUNC10(buf, tmp);
		}

		FUNC3(o);
	}

	FUNC10(buf, "test");

	FUNC9(hash, buf->Buf, buf->Size);

	FUNC2(buf);

	FUNC0(&ret, hash, sizeof(UINT64));

	ret = FUNC1(ret);

	return ret;
}