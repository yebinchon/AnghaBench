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
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_3__ {int Size; int* Data; int Id; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ DHCP_OPTION ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int DHCP_ID_PRIVATE ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC9 (int) ; 

LIST *FUNC10(void *data, UINT size)
{
	BUF *b;
	LIST *o;
	DHCP_OPTION *last_opt;
	// Validate arguments
	if (data == NULL)
	{
		return NULL;
	}

	b = FUNC4();
	FUNC8(b, data, size);
	FUNC7(b, 0, 0);

	o = FUNC5(NULL);

	last_opt = NULL;

	while (true)
	{
		UCHAR c = 0;
		UCHAR sz = 0;
		DHCP_OPTION *opt;
		if (FUNC6(b, &c, 1) != 1)
		{
			break;
		}
		if (c == 0xff)
		{
			break;
		}
		if (FUNC6(b, &sz, 1) != 1)
		{
			break;
		}

		if (c == DHCP_ID_PRIVATE && last_opt != NULL)
		{
			UINT new_size = last_opt->Size + (UINT)sz;
			UCHAR *new_buf = FUNC9(new_size);
			FUNC1(new_buf, last_opt->Data, last_opt->Size);
			FUNC6(b, new_buf + last_opt->Size, sz);
			FUNC2(last_opt->Data);
			last_opt->Data = new_buf;
			last_opt->Size = new_size;
		}
		else
		{
			opt = FUNC9(sizeof(DHCP_OPTION));
			opt->Id = (UINT)c;
			opt->Size = (UINT)sz;
			opt->Data = FUNC9((UINT)sz);
			FUNC6(b, opt->Data, sz);
			FUNC0(o, opt);

			last_opt = opt;
		}
	}

	FUNC3(b);

	return o;
}