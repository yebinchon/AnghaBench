#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dummy ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  Rc4; int /*<<< orphan*/  Key; } ;
typedef  TYPE_1__ PRAND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int) ; 

PRAND *FUNC5(void *key, UINT key_size)
{
	PRAND *r;
	UCHAR dummy[256];
	if (key == NULL || key_size == 0)
	{
		key = "DUMMY";
		key_size = 5;
	}

	r = FUNC4(sizeof(PRAND));

	FUNC2(r->Key, key, key_size);

	r->Rc4 = FUNC1(key, key_size);

	FUNC3(dummy, sizeof(dummy));

	FUNC0(r->Rc4, dummy, dummy, 256);

	return r;
}