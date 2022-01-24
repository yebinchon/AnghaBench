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
struct TYPE_6__ {scalar_t__ head; scalar_t__ tail; int /*<<< orphan*/  active_record_count; } ;
typedef  TYPE_1__ btlog_t ;
typedef  scalar_t__ btlog_recordindex_t ;
struct TYPE_7__ {scalar_t__ next; } ;
typedef  TYPE_2__ btlog_record_t ;

/* Variables and functions */
 scalar_t__ BTLOG_RECORDINDEX_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(btlog_t *btlog, btlog_recordindex_t recindex)
{
	
	FUNC0(recindex != BTLOG_RECORDINDEX_NONE);

	if (btlog->head == BTLOG_RECORDINDEX_NONE) {
		/* empty active list, update both head and tail */
		btlog->head = btlog->tail = recindex;
	} else {
		btlog_record_t *record = FUNC1(btlog, btlog->tail);
		record->next = recindex;
		btlog->tail = recindex;
	}
	btlog->active_record_count++;
}