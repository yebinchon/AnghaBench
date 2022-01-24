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
typedef  int uint32_t ;
struct kpersona_info {int persona_ngroups; int /*<<< orphan*/  persona_name; scalar_t__ persona_gmuid; int /*<<< orphan*/ * persona_groups; int /*<<< orphan*/  persona_gid; int /*<<< orphan*/  persona_type; int /*<<< orphan*/  persona_id; int /*<<< orphan*/  persona_info_version; } ;

/* Variables and functions */
 int PA_HAS_GID ; 
 int PA_HAS_GROUPS ; 
 int PA_HAS_ID ; 
 int PA_HAS_LOGIN ; 
 int PA_HAS_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static inline void FUNC4(const char *msg, uint32_t flags, const struct kpersona_info *ki)
{
	if (msg)
		FUNC0("%s", msg);
	FUNC0("\t kpersona_info (v%d) {", ki->persona_info_version);
	FUNC0("\t\t     %cid:  %d", flags & PA_HAS_ID ? '+' : '-', ki->persona_id);
	FUNC0("\t\t     %ctype:  %d", flags & PA_HAS_TYPE ? '+' : '-', ki->persona_type);
	FUNC0("\t\t    %cgid:  %d", flags & PA_HAS_GID ? '+' : '-', ki->persona_gid);

	FUNC3("\t\t  ngroups:  %d", ki->persona_ngroups);
	for (int i = 0; i < ki->persona_ngroups; i++) {
		if (i == 0) FUNC1(" {");
		FUNC1(" %d", ki->persona_groups[i]);
	}
	if (ki->persona_ngroups > 0)
		FUNC1(" }");
	FUNC2();

	FUNC0("\t\t  %cgmuid: %d (0x%x)", flags & PA_HAS_GROUPS ? '+' : '-',
	     (int)ki->persona_gmuid, ki->persona_gmuid);
	FUNC0("\t\t  %clogin: \"%s\"", flags & PA_HAS_LOGIN ? '+' : '-', ki->persona_name);
	FUNC0("\t }");
}