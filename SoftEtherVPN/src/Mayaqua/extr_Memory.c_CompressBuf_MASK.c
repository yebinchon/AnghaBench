#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

BUF *FUNC7(BUF *src_buf)
{
	UINT dst_size;
	UCHAR *dst_buf;
	BUF *b;
	// Validate arguments
	if (src_buf == NULL)
	{
		return NULL;
	}

	dst_size = FUNC0(src_buf->Size);
	dst_buf = FUNC3(dst_size);

	dst_size = FUNC1(dst_buf, dst_size, src_buf->Buf, src_buf->Size);

	if (dst_size == 0)
	{
		FUNC2(dst_buf);
		return NULL;
	}

	b = FUNC4();
	FUNC6(b, src_buf->Size);
	FUNC5(b, dst_buf, dst_size);

	FUNC2(dst_buf);

	return b;
}