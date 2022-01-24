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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  dsttmpname ;

/* Variables and functions */
 int /*<<< orphan*/  COPYFILE_DATA ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int MAXPATHLEN ; 
 int O_RDONLY ; 
 int O_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (int,struct stat*) ; 
 int FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char**,char*) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC13 (char*,char const*) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(int argc, char * argv[])
{
	struct stat sb;
	void *mset;
	mode_t mode;
	bool gotmode = false;
	int ch;
	int ret;
	int srcfd, dstfd;
	const char *src = NULL;
	const char *dst = NULL;
	char dsttmpname[MAXPATHLEN];

	while ((ch = FUNC10(argc, argv, "cSm:")) != -1) {
		switch(ch) {
			case 'c':
			case 'S':
				/* ignored for compatibility */
				break;
			case 'm':
				gotmode = true;
				mset = FUNC14(optarg);
				if (!mset)
					FUNC3(EX_USAGE, "Unrecognized mode %s", optarg);

				mode = FUNC9(mset, 0);
				FUNC6(mset);
				break;
			case '?':
			default:
				FUNC16();
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 2) {
		FUNC16();
	}

	src = argv[0];
	dst = argv[1];

	srcfd = FUNC12(src, O_RDONLY | O_SYMLINK, 0);
	if (srcfd < 0)
		FUNC2(EX_NOINPUT, "open(%s)", src);

	ret = FUNC7(srcfd, &sb);
	if (ret < 0)
		FUNC2(EX_NOINPUT, "fstat(%s)", src);

	if (!FUNC0(sb.st_mode))
		FUNC2(EX_USAGE, "%s is not a regular file", src);

	FUNC15(dsttmpname, sizeof(dsttmpname), "%s.XXXXXX", dst);

	dstfd = FUNC11(dsttmpname);
	if (dstfd < 0)
		FUNC2(EX_UNAVAILABLE, "mkstemp(%s)", dsttmpname);

	ret = FUNC5(srcfd, dstfd, NULL,
					COPYFILE_DATA);
	if (ret < 0)
		FUNC2(EX_UNAVAILABLE, "fcopyfile(%s, %s)", src, dsttmpname);

	ret = FUNC8(dstfd, NULL);
	if (ret < 0)
		FUNC2(EX_UNAVAILABLE, "futimes(%s)", dsttmpname);

	if (gotmode) {
		ret = FUNC4(dstfd, mode);
		if (ret < 0)
			FUNC2(EX_NOINPUT, "fchmod(%s, %ho)", dsttmpname, mode);
	}

	ret = FUNC13(dsttmpname, dst);
	if (ret < 0)
		FUNC2(EX_NOINPUT, "rename(%s, %s)", dsttmpname, dst);

	ret = FUNC1(dstfd);
	if (ret < 0)
		FUNC2(EX_NOINPUT, "close(dst)");

	ret = FUNC1(srcfd);
	if (ret < 0)
		FUNC2(EX_NOINPUT, "close(src)");

	return 0;
}