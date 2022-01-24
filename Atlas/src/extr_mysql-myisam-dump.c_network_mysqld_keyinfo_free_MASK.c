#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_3__* parts; } ;
typedef  TYPE_1__ network_mysqld_keyinfo ;
typedef  size_t guint ;
struct TYPE_6__ {size_t len; int /*<<< orphan*/ * pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(network_mysqld_keyinfo *keyinfo) {
	guint i;

	if (!keyinfo) return;

	for (i = 0; i < keyinfo->parts->len; i++) {
		FUNC3(keyinfo->parts->pdata[i]);
	}
	FUNC1(keyinfo->parts, TRUE);
	FUNC2(keyinfo->name, TRUE);

	FUNC0(keyinfo);
}