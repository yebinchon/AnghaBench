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
struct stat {size_t st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,struct stat*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (size_t) ; 
 scalar_t__ FUNC9 (char*,char*,size_t) ; 
 int FUNC10 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int,char*,size_t) ; 

int FUNC16(int argc, char * argv[])
{
	struct stat sb;
	char *newcontent = NULL;
	size_t newcontentlength = 0;
	char *oldcontent = NULL;
	int ret;
	int dstfd;
	const char *dst = NULL;
	ssize_t readsize, writesize;
	int i;

	if (argc < 2) {
		FUNC14();
	}

	dst = argv[1];

	for (i=2; i < argc; i++) {
		newcontentlength += FUNC13(argv[i]) + 1 /* space or newline */;
	}
	newcontentlength += 1; /* NUL */

	newcontent = FUNC8(newcontentlength);
	if (newcontent == NULL)
		FUNC2(EX_UNAVAILABLE, "malloc() failed");

	newcontent[0] = '\0';

	for (i=2; i < argc; i++) {
		FUNC12(newcontent, argv[i], newcontentlength);
		if (i < argc - 1) {
			FUNC12(newcontent, " ", newcontentlength);
		} else {
			FUNC12(newcontent, "\n", newcontentlength);
		}
	}

	dstfd = FUNC10(dst, O_RDWR | O_CREAT | O_APPEND, DEFFILEMODE);
	if (dstfd < 0)
		FUNC2(EX_NOINPUT, "open(%s)", dst);

	ret = FUNC6(dstfd, &sb);
	if (ret < 0)
		FUNC2(EX_NOINPUT, "fstat(%s)", dst);

	if (!FUNC0(sb.st_mode))
		FUNC2(EX_USAGE, "%s is not a regular file", dst);

	if (sb.st_size != newcontentlength) {
		/* obvious new content must be different than old */
		goto replace;
	}

	oldcontent = FUNC8(newcontentlength);
	if (oldcontent == NULL)
		FUNC2(EX_UNAVAILABLE, "malloc(%lu) failed", newcontentlength);

	readsize = FUNC11(dstfd, oldcontent, newcontentlength);
	if (readsize == -1)
		FUNC2(EX_UNAVAILABLE, "read() failed");
	else if (readsize != newcontentlength)
		FUNC3(EX_UNAVAILABLE, "short read of file");

	if (0 == FUNC9(oldcontent, newcontent, newcontentlength)) {
		/* binary comparison succeeded, just exit */
		FUNC5(oldcontent);
		ret = FUNC1(dstfd);
		if (ret < 0)
			FUNC2(EX_UNAVAILABLE, "close() failed");

		FUNC4(0);
	}

replace:
	ret = FUNC7(dstfd, 0);
	if (ret < 0)
		FUNC2(EX_UNAVAILABLE, "ftruncate() failed");

	writesize = FUNC15(dstfd, newcontent, newcontentlength);
	if (writesize == -1)
		FUNC2(EX_UNAVAILABLE, "write() failed");
	else if (writesize != newcontentlength)
		FUNC3(EX_UNAVAILABLE, "short write of file");

	ret = FUNC1(dstfd);
	if (ret < 0)
		FUNC2(EX_NOINPUT, "close(dst)");

	return 0;
}