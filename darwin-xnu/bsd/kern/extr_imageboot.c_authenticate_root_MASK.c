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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,void**,size_t*) ; 
 int FUNC5 (void*,size_t) ; 
 int FUNC6 (char const*,void*) ; 

__attribute__((used)) static int
FUNC7(const char *root_path)
{
	char *chunklist_path = NULL;
	void *chunklist_buf = NULL;
	size_t chunklist_len = 32*1024*1024UL;
	int err = 0;

	err = FUNC2(root_path, &chunklist_path);
	if (err) {
		FUNC1("failed creating chunklist path");
		goto out;
	}

	FUNC0("validating root against chunklist %s", chunklist_path);

	/*
	 * Read and authenticate the chunklist, then validate the root image against
	 * the chunklist.
	 */

	FUNC0("reading chunklist");
	err = FUNC4(chunklist_path, &chunklist_buf, &chunklist_len);
	if (err) {
		FUNC1("failed to read chunklist");
		goto out;
	}

	FUNC0("validating chunklist");
	err = FUNC5(chunklist_buf, chunklist_len);
	if (err < 0) {
		FUNC0("missing or incorrect signature on chunklist");
		goto out;
	} else if (err) {
		FUNC1("failed to validate chunklist");
		goto out;
	} else {
		FUNC0("successfully validated chunklist");
	}

	FUNC0("validating root image against chunklist");
	err = FUNC6(root_path, chunklist_buf);
	if (err) {
		FUNC1("failed to validate root image against chunklist (%d)", err);
		goto out;
	}

	/* everything checked out - go ahead and mount this */
	FUNC0("root image authenticated");

 out:
	FUNC3(chunklist_buf);
	FUNC3(chunklist_path);
	return err;
}