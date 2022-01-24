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
struct TYPE_4__ {int /*<<< orphan*/ * next; } ;
typedef  TYPE_1__ sndBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* freelist ; 
 int inUse ; 
 int totalInUse ; 

sndBuffer*	FUNC1() {
	sndBuffer *v;
redo:
	if (freelist == NULL) {
		FUNC0();
		goto redo;
	}

	inUse -= sizeof(sndBuffer);
	totalInUse += sizeof(sndBuffer);

	v = freelist;
	freelist = *(sndBuffer **)freelist;
	v->next = NULL;
	return v;
}