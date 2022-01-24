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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int WriteMode; int /*<<< orphan*/  pData; } ;
typedef  TYPE_1__ IO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_IO_TOTAL_WRITE_SIZE ; 
 int /*<<< orphan*/  KS_IO_WRITE_COUNT ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__) ; 

bool FUNC3(IO *o, void *buf, UINT size)
{
	// Validate arguments
	if (o == NULL || buf == NULL)
	{
		return false;
	}
	if (o->WriteMode == false)
	{
		return false;
	}

	// KS
	FUNC1(KS_IO_WRITE_COUNT);
	FUNC0(KS_IO_TOTAL_WRITE_SIZE, size);

	if (size == 0)
	{
		return true;
	}

	return FUNC2(o->pData, buf, size);
}