#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  uuid_string_t ;
struct uuid_search_info {int /*<<< orphan*/  found_proc; int /*<<< orphan*/  target_uuid; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_3__ {scalar_t__ log_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ LOG_INFO ; 
 int /*<<< orphan*/  PROC_ALLPROCLIST ; 
 int /*<<< orphan*/  PROC_NULL ; 
 int /*<<< orphan*/  flow_divert_find_proc_by_uuid_callout ; 
 int /*<<< orphan*/  flow_divert_find_proc_by_uuid_filter ; 
 int /*<<< orphan*/  FUNC1 (struct uuid_search_info*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ nil_pcb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uuid_search_info*,int /*<<< orphan*/ ,struct uuid_search_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static proc_t
FUNC5(uuid_t uuid)
{
	struct uuid_search_info info;

	if (LOG_INFO <= nil_pcb.log_level) {
		uuid_string_t uuid_str;
		FUNC4(uuid, uuid_str);
		FUNC0(LOG_INFO, &nil_pcb, "Looking for process with UUID %s", uuid_str);
	}

	FUNC1(&info, 0, sizeof(info));
	info.found_proc = PROC_NULL;
	FUNC3(info.target_uuid, uuid);

	FUNC2(PROC_ALLPROCLIST, flow_divert_find_proc_by_uuid_callout, &info, flow_divert_find_proc_by_uuid_filter, &info);

	return info.found_proc;
}