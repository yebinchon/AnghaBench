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
typedef  char uid_t ;
struct kpersona_info {scalar_t__* persona_name; void* persona_info_version; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 void* PERSONA_INFO_V1 ; 
 int /*<<< orphan*/  FUNC1 (char*,struct kpersona_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char const*,char,char*,size_t*) ; 
 int FUNC6 (char,struct kpersona_info*) ; 
 int FUNC7 (scalar_t__,struct kpersona_info*) ; 

__attribute__((used)) static int FUNC8(struct kpersona_info *ki, pid_t pid, uid_t uid)
{
	int ret;

	FUNC4("Looking up persona (login:%s, pid:%d, uid:%d)", ki->persona_name, pid, uid);
	if (pid > 0) {
		ki->persona_info_version = PERSONA_INFO_V1;
		ret = FUNC7(pid, ki);
		if (ret < 0)
			FUNC3("pidinfo failed!");
		else
			FUNC1("Persona-for-pid:", ki);
	} else {
		int np = 0;
		uid_t personas[128];
		size_t npersonas = FUNC0(personas);
		const char *name = NULL;
		if (ki->persona_name[0] != 0)
			name = ki->persona_name;

		np = FUNC5(name, uid, personas, &npersonas);
		if (np < 0)
			FUNC2("kpersona_find returned %d (errno:%d)", np, errno);
		FUNC4("Found %zu persona%c", npersonas, npersonas != 1 ? 's' : ' ');
		np = npersonas;
		while (np--) {
			FUNC4("\tpersona[%d]=%d...", np, personas[np]);
			ki->persona_info_version = PERSONA_INFO_V1;
			ret = FUNC6(personas[np], ki);
			if (ret < 0)
				FUNC2("kpersona_info failed (errno:%d) for persona[%d]", errno, personas[np]);
			FUNC1(NULL, ki);
		}
	}

	return ret;
}