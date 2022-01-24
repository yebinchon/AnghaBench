#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* name; } ;
struct TYPE_6__ {struct TYPE_6__* zip; scalar_t__ fp; struct TYPE_6__* ecd; struct TYPE_6__* cd; TYPE_1__ ent; } ;
typedef  TYPE_2__ ZIP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2(ZIP* zip) {
	/* release all */
	FUNC1(zip->ent.name);
	FUNC1(zip->cd);
	FUNC1(zip->ecd);
	/* only if not suspended */
	if (zip->fp)
		FUNC0(zip->fp);
	FUNC1(zip->zip);
	FUNC1(zip);
}