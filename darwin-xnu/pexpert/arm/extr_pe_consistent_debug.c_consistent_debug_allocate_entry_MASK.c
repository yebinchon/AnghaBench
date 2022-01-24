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
struct TYPE_6__ {int /*<<< orphan*/  record_id; } ;
typedef  TYPE_2__ dbg_record_header_t ;
struct TYPE_5__ {unsigned int num_records; } ;
struct TYPE_7__ {TYPE_2__* records; TYPE_1__ top_level_header; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* consistent_debug_registry ; 
 int /*<<< orphan*/  kDbgIdReservedEntry ; 
 int /*<<< orphan*/  kDbgIdUnusedEntry ; 

__attribute__((used)) static dbg_record_header_t* FUNC1(void) {
	unsigned int i;

	if (!consistent_debug_registry)
		return NULL;
	for (i = 0; i < consistent_debug_registry->top_level_header.num_records; i++) {
		dbg_record_header_t *record = &consistent_debug_registry->records[i];
		if (FUNC0(kDbgIdUnusedEntry, kDbgIdReservedEntry, &record->record_id)) {
			// Reserved an entry at position i.
			return (dbg_record_header_t*)record;
		}
	}
	return NULL;
}