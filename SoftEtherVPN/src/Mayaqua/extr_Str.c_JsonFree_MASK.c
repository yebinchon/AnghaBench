#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  array; TYPE_2__* string; int /*<<< orphan*/  object; } ;
struct TYPE_7__ {TYPE_1__ value; } ;
typedef  TYPE_2__ JSON_VALUE ;

/* Variables and functions */
#define  JSON_TYPE_ARRAY 130 
#define  JSON_TYPE_OBJECT 129 
#define  JSON_TYPE_STRING 128 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(JSON_VALUE *value) {
	if (value == NULL)
	{
		return;
	}
	switch (FUNC0(value)) {
	case JSON_TYPE_OBJECT:
		FUNC2(value->value.object);
		break;
	case JSON_TYPE_STRING:
		FUNC3(value->value.string);
		break;
	case JSON_TYPE_ARRAY:
		FUNC1(value->value.array);
		break;
	default:
		break;
	}
	FUNC3(value);
}