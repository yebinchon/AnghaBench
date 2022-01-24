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
struct TYPE_3__ {scalar_t__ count; scalar_t__ capacity; int /*<<< orphan*/ ** items; int /*<<< orphan*/ * wrapping_value; } ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  TYPE_1__ JSON_ARRAY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static JSON_ARRAY * FUNC1(JSON_VALUE *wrapping_value) {
	JSON_ARRAY *new_array = (JSON_ARRAY*)FUNC0(sizeof(JSON_ARRAY));
	if (new_array == NULL) {
		return NULL;
	}
	new_array->wrapping_value = wrapping_value;
	new_array->items = (JSON_VALUE**)NULL;
	new_array->capacity = 0;
	new_array->count = 0;
	return new_array;
}