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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int UINT ;

/* Variables and functions */
#define  LICENSE_STATUS_COMPETITION 135 
#define  LICENSE_STATUS_CPU 134 
#define  LICENSE_STATUS_DUP 133 
#define  LICENSE_STATUS_EXPIRED 132 
#define  LICENSE_STATUS_ID_DIFF 131 
#define  LICENSE_STATUS_INSUFFICIENT 130 
#define  LICENSE_STATUS_NONSENSE 129 
#define  LICENSE_STATUS_OK 128 
 int /*<<< orphan*/ * FUNC0 (char*) ; 

wchar_t *FUNC1(UINT i)
{
	wchar_t *ret = FUNC0("LICENSE_STATUS_OTHERERROR");

	switch (i)
	{
	case LICENSE_STATUS_OK:
		ret = FUNC0("LICENSE_STATUS_OK");
		break;

	case LICENSE_STATUS_EXPIRED:
		ret = FUNC0("LICENSE_STATUS_EXPIRED");
		break;

	case LICENSE_STATUS_ID_DIFF:
		ret = FUNC0("LICENSE_STATUS_ID_DIFF");
		break;

	case LICENSE_STATUS_DUP:
		ret = FUNC0("LICENSE_STATUS_DUP");
		break;

	case LICENSE_STATUS_INSUFFICIENT:
		ret = FUNC0("LICENSE_STATUS_INSUFFICIENT");
		break;

	case LICENSE_STATUS_COMPETITION:
		ret = FUNC0("LICENSE_STATUS_COMPETITION");
		break;

	case LICENSE_STATUS_NONSENSE:
		ret = FUNC0("LICENSE_STATUS_NONSENSE");
		break;

	case LICENSE_STATUS_CPU:
		ret = FUNC0("LICENSE_STATUS_CPU");
		break;
	}

	return ret;
}