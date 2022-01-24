#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_string_t ;
struct uuid_search_info {int /*<<< orphan*/  target_uuid; int /*<<< orphan*/ * found_signing_id; int /*<<< orphan*/  found_proc; int /*<<< orphan*/  found_multiple_signing_ids; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  M_TEMP ; 
 int PROC_CLAIMED_DONE ; 
 int PROC_RETURNED_DONE ; 
 int /*<<< orphan*/  nil_pcb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(proc_t p, void *arg)
{
	struct uuid_search_info *info = (struct uuid_search_info *)arg;
	int result = PROC_RETURNED_DONE; /* By default, we didn't find the process */

	if (info->found_signing_id != NULL) {
		if (!info->found_multiple_signing_ids) {
			/* All processes that were found had the same signing identifier, so just claim this first one and be done. */
			info->found_proc = p;
			result = PROC_CLAIMED_DONE;
		} else {
			uuid_string_t uuid_str;
			FUNC2(info->target_uuid, uuid_str);
			FUNC0(LOG_WARNING, &nil_pcb, "Found multiple processes with UUID %s with different signing identifiers", uuid_str);
		}
		FUNC1(info->found_signing_id, M_TEMP);
		info->found_signing_id = NULL;
	}

	if (result == PROC_RETURNED_DONE) {
		uuid_string_t uuid_str;
		FUNC2(info->target_uuid, uuid_str);
		FUNC0(LOG_WARNING, &nil_pcb, "Failed to find a process with UUID %s", uuid_str);
	}

	return result;
}