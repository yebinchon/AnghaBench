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
struct TYPE_3__ {void* KeySchedule; int /*<<< orphan*/  KeyValue; } ;
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  TYPE_1__ DES_KEY_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DES_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 void* FUNC2 (int) ; 

DES_KEY_VALUE *FUNC3(void *value)
{
	DES_KEY_VALUE *v;
	// Validate arguments
	if (value == NULL)
	{
		return NULL;
	}

	v = FUNC2(sizeof(DES_KEY_VALUE));

	FUNC0(v->KeyValue, value, DES_KEY_SIZE);

	v->KeySchedule = FUNC2(sizeof(DES_key_schedule));

	FUNC1(value, v->KeySchedule);

	return v;
}