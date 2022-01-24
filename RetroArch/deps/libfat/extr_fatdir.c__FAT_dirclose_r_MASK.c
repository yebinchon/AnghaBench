#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _reent {int dummy; } ;
struct TYPE_7__ {scalar_t__ dirStruct; } ;
struct TYPE_6__ {int inUse; TYPE_1__* partition; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ DIR_STATE_STRUCT ;
typedef  TYPE_3__ DIR_ITER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2 (struct _reent *r, DIR_ITER *dirState)
{
	DIR_STATE_STRUCT* state = (DIR_STATE_STRUCT*) (dirState->dirStruct);

	/* We are no longer using this entry */
	FUNC0(&state->partition->lock);
	state->inUse = false;
	FUNC1(&state->partition->lock);

	return 0;
}