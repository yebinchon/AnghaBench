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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PKT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAC_PROTO_IPV4 ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

PKT *FUNC6(UCHAR *buf, UINT size)
{
	UCHAR *tmp;
	UINT tmp_size;
	PKT *ret;
	// Validate arguments
	if (buf == NULL)
	{
		return NULL;
	}

	tmp_size = size + 14;
	tmp = FUNC2(tmp_size);
	FUNC5(tmp, 12);
	FUNC4(tmp + 12, MAC_PROTO_IPV4);
	FUNC0(tmp + 14, buf, size);

	ret = FUNC3(tmp, tmp_size);

	if (ret == NULL)
	{
		FUNC1(tmp);
	}

	return ret;
}