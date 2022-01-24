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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t MAXPATHLEN ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (char*,char*,size_t) ; 
 size_t FUNC4 (char*,char const*,size_t) ; 
 size_t FUNC5 (char*) ; 
 size_t FUNC6 (char const*,size_t) ; 

__attribute__((used)) static int
FUNC7(const char *root_path, char **bufp)
{
	int err = 0;
	char *path = NULL;
	size_t len = 0;

	path = FUNC1(MAXPATHLEN);
	if (path == NULL) {
		FUNC0("failed to allocate space for chunklist path");
		err = ENOMEM;
		goto out;
	}

	len = FUNC6(root_path, MAXPATHLEN);
	if (len < MAXPATHLEN && len > FUNC5(".dmg")) {
		/* correctly terminated string with space for extension */
	} else {
		FUNC0("malformed root path");
		err = EINVAL;
		goto out;
	}

	len = FUNC4(path, root_path, MAXPATHLEN);
	if (len >= MAXPATHLEN) {
		FUNC0("root path is too long");
		err = EINVAL;
		goto out;
	}

	path[len - FUNC5(".dmg")] = '\0';
	len = FUNC3(path, ".chunklist", MAXPATHLEN);
	if (len >= MAXPATHLEN) {
		FUNC0("chunklist path is too long");
		err = EINVAL;
		goto out;
	}

out:
	if (err) {
		FUNC2(path);
	} else {
		*bufp = path;
	}
	return err;
}