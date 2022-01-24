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
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char const*) ; 

void FUNC9(const char *name, char ***files, int *num_files)
{
	DIR *dir;
	struct dirent *entry;
	int cnt;

	if (!(dir = FUNC2(name)))
		return;

	while ((entry = FUNC3(dir)) != NULL) {
		if (entry->d_type == DT_DIR) {
			char path[1024];
			if (FUNC7(entry->d_name, ".") == 0 || FUNC7(entry->d_name, "..") == 0)
				continue;
			FUNC5(path, sizeof(path), "%s/%s", name, entry->d_name);
			FUNC9(path, files, num_files);
		} else {
			cnt = *num_files;
			*files = (char **)FUNC4(*files, sizeof(char *) * (cnt + 1));
			(*files)[cnt] = (char *)FUNC1(sizeof(char) * ( FUNC8(name) + 1 + FUNC8(entry->d_name) + 10));
			FUNC6((*files)[cnt], "%s/%s", name, entry->d_name);
			cnt ++;
			*num_files = cnt;
		}
	}

	FUNC0(dir);
}