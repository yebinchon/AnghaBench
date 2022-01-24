#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC3(BUF *b, UCHAR t, UINT v, UCHAR vt, void *data, UINT size)
{
	UINT len;
	// Validate arguments
	if (b == NULL || (data == NULL && size != 0))
	{
		return;
	}

	// type
	FUNC1(b, t);

	// length
	len = 2 + size;
	if (t == 26)
	{
		len += 6;
	}
	FUNC1(b, (UCHAR)len);

	if (t != 26)
	{
		// value
		FUNC0(b, data, size);
	}
	else
	{
		// vendor
		FUNC2(b, v);

		// vendor type
		FUNC1(b, vt);

		// length2
		len = size + 2;
		FUNC1(b, (UCHAR)len);

		// value
		FUNC0(b, data, size);
	}
}