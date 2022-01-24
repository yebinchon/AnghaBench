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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC3 (void*,int,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (void*,unsigned long,char const*) ; 
 void* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(const char *fname, const char *opts)
{
	unsigned long len, read_len;
	int ret = -1;
	void *buff;
	FILE *f;

	f = FUNC1(fname, "rb");
	if (f == NULL)
		return -1;

	FUNC5(f, 0, SEEK_END);
	len = FUNC6(f);
	FUNC5(f, 0, SEEK_SET);

	buff = FUNC8(len);
	if (buff == NULL)
		goto fail0;

	read_len = FUNC3(buff, 1, len, f);
	if (read_len != len) {
		FUNC2(stderr, "failed to read module\n");
		goto fail1;
	}

	ret = FUNC7(buff, len, opts);

fail1:
	FUNC4(buff);
fail0:
	FUNC0(f);
	return ret;
}