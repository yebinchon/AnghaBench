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
typedef  size_t guint ;
struct TYPE_4__ {size_t len; int /*<<< orphan*/ * pdata; } ;
typedef  TYPE_1__ GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(GPtrArray *fields) {
	guint i;
	if (!fields) return;

	for (i = 0; i < fields->len; i++) {
		FUNC1(fields->pdata[i]);
	}
	FUNC0(fields, TRUE);
}