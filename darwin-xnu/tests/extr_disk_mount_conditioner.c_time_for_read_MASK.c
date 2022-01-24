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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int READSIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

__attribute__((used)) static uint64_t FUNC8(int fd, const char *expected) {
	int err;
	ssize_t ret;
	char buf[READSIZE];
	uint64_t start, stop;

	FUNC3(buf, sizeof(buf));
	FUNC5(fd, 0, SEEK_SET);

	start = FUNC4();
	ret = FUNC7(fd, buf, READSIZE);
	stop = FUNC4();

	FUNC2(ret, 0L, "read from temporary file");
	FUNC1(ret, READSIZE, "read %ld bytes from temporary file", READSIZE);
	err = FUNC6(buf, expected, sizeof(buf));
	FUNC0(0, err, "read expected contents from temporary file");

	return (stop - start);
}