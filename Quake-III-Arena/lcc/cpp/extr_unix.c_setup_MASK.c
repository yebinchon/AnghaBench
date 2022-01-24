#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
typedef  int /*<<< orphan*/  Tokenrow ;
struct TYPE_2__ {int always; int deleted; char* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cplusplus ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ Mflag ; 
 int NINCLUDE ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* includelist ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 char* rcsid ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC12 (char*) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  verbose ; 

void
FUNC15(int argc, char **argv)
{
	int c, fd, i;
	char *fp, *dp;
	Tokenrow tr;
	extern void FUNC0(void);

	FUNC0();
	while ((c = FUNC5(argc, argv, "MNOVv+I:D:U:F:lg")) != -1)
		switch (c) {
		case 'N':
			for (i=0; i<NINCLUDE; i++)
				if (includelist[i].always==1)
					includelist[i].deleted = 1;
			break;
		case 'I':
			for (i=NINCLUDE-2; i>=0; i--) {
				if (includelist[i].file==NULL) {
					includelist[i].always = 1;
					includelist[i].file = optarg;
					break;
				}
			}
			if (i<0)
				FUNC3(FATAL, "Too many -I directives");
			break;
		case 'D':
		case 'U':
			FUNC11("<cmdarg>", -1, optarg);
			FUNC7(3, &tr);
			FUNC6(&tr, 1);
			FUNC1(&tr, c);
			FUNC14();
			break;
		case 'M':
			Mflag++;
			break;
		case 'v':
			FUNC4(stderr, "%s %s\n", argv[0], rcsid);
			break;
		case 'V':
			verbose++;
			break;
		case '+':
			Cplusplus++;
			break;
		default:
			break;
		}
	dp = ".";
	fp = "<stdin>";
	fd = 0;
	if (optind<argc) {
		if ((fp = FUNC13(argv[optind], '/')) != NULL) {
			int len = fp - argv[optind];
			dp = (char*)FUNC8((uchar*)argv[optind], len+1, 0);
			dp[len] = '\0';
		}
		fp = (char*)FUNC8((uchar*)argv[optind], FUNC12(argv[optind]), 0);
		if ((fd = FUNC9(fp, 0)) <= 0)
			FUNC3(FATAL, "Can't open input file %s", fp);
	}
	if (optind+1<argc) {
		int fdo = FUNC0(argv[optind+1], 0666);
		if (fdo<0)
			FUNC3(FATAL, "Can't open output file %s", argv[optind+1]);
		FUNC2(fdo, 1);
	}
	if(Mflag)
		FUNC10(fp);
	includelist[NINCLUDE-1].always = 0;
	includelist[NINCLUDE-1].file = dp;
	FUNC11(fp, fd, NULL);
}