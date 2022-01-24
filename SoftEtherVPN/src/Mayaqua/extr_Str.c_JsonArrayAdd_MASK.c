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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

UINT FUNC1(JSON_ARRAY *array, JSON_VALUE *value) {
	if (array == NULL || value == NULL || value->parent != NULL) {
		return JSON_RET_ERROR;
	}
	return FUNC0(array, value);
}