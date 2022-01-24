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
typedef  int /*<<< orphan*/  uid_t ;
struct kpersona_info {int /*<<< orphan*/  persona_info_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERSONA_INFO_V1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct kpersona_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct kpersona_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kpersona_info *ki)
{
	int ret;
	uid_t persona_id = 0;

	FUNC2("Creating persona...");
	ki->persona_info_version = PERSONA_INFO_V1;
	ret = FUNC3(ki, &persona_id);
	if (ret == 0) {
		FUNC2("Created persona %d:", persona_id);
		FUNC0(NULL, ki);
	} else {
		FUNC1("kpersona_alloc return %d (errno:%d)", ret, errno);
	}

	return ret;
}