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
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int HTTP_PACK_RAND_SIZE_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 () ; 

void FUNC5(PACK *p)
{
	UINT size;
	UCHAR *buf;
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	size = FUNC4() % HTTP_PACK_RAND_SIZE_MAX;
	buf = FUNC1(size);
	FUNC3(buf, size);

	FUNC2(p, "pencore", buf, size);

	FUNC0(buf);
}