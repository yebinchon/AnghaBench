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
typedef  int /*<<< orphan*/  uuid_t ;
struct stat {int st_mode; } ;
struct TYPE_4__ {int gl_matchc; char** gl_pathv; } ;
typedef  TYPE_1__ glob_t ;

/* Variables and functions */
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,struct stat*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(char *search_path, uuid_t kuuid) {
	glob_t g;
	int ret = FUNC4(search_path, 0, NULL, &g);
	T_WITH_ERRNO; FUNC0(ret, 0, "glob %s", search_path);

	bool pass = false;
	for (int i = 0; i < g.gl_matchc; i++) {
		char *path = g.gl_pathv[i];

		//check that [path] is the path for a file (not a directory, device, etc.)
		struct stat s;
		int ret = FUNC7(path, &s);
		FUNC1(ret, "stat %s", path);
		if ((s.st_mode & S_IFREG) == 0) {
			continue;
		}

		FUNC3("Reading file at path: %s", path);
		uuid_t tuuid;
		if (FUNC6(path, tuuid) &&
				FUNC8(kuuid, tuuid) == 0) {
			pass = true;
			break;
		}
	}
	FUNC5(&g);
	FUNC2(pass, "The sources match");
}