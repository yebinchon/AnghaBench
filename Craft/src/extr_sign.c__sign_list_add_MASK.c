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
struct TYPE_4__ {scalar_t__ size; scalar_t__ capacity; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ SignList ;
typedef  int /*<<< orphan*/  Sign ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(SignList *list, Sign *sign) {
    if (list->size == list->capacity) {
        FUNC1(list);
    }
    Sign *e = list->data + list->size++;
    FUNC0(e, sign, sizeof(Sign));
}