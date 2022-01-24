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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  rcc_program_ty ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcsid ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(int argc, char *argv[]) {
	int i, version;
	float stamp = (FUNC2(FUNC12(rcsid, ",v")), FUNC13(FUNC12(rcsid, ",v")+2, NULL))
;
	char *infile = NULL, *outfile = NULL;
	rcc_program_ty pickle;

	for (i = 1; i < argc; i++)
		if (*argv[i] != '-' || FUNC11(argv[i], "-") == 0) {
			if (infile == NULL)
				infile = argv[i];
			else if (outfile == NULL)
				outfile = argv[i];
		}
	if (infile != NULL && FUNC11(infile, "-") != 0
	&& FUNC7(infile, "rb", stdin) == NULL) {
		FUNC6(stderr, "%s: can't read `%s'\n", argv[0], infile);
		FUNC5(EXIT_FAILURE);
	}
	if (infile == NULL || FUNC11(infile, "-") == 0)
		infile = "Standard Input";
#if WIN32
	else
		_setmode(_fileno(stdin), _O_BINARY);
#endif
	if (outfile != NULL && FUNC11(outfile, "-") != 0
	&& FUNC7(outfile, "w", stdout) == NULL) {
		FUNC6(stderr, "%s: can't write `%s'\n", argv[0], outfile);
		FUNC5(EXIT_FAILURE);
	}
	version = FUNC10(stdin);
	FUNC2(version/100 == (int)stamp);
	pickle = FUNC9(stdin);
	FUNC8("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\"\n");
	FUNC8("<html><head><title>%s</title>\n"
	"<link rev=made href=\"mailto:drh@microsoft.com\">\n"
	"</head><body>\n<h1>%s</h1>\n",	infile, infile);
	FUNC8("<p>version = %d.%d</p>", version/100, version%100);
	FUNC4(pickle);
	{
		time_t t;
		FUNC14(&t);
		FUNC8("<hr><address>%s</address>\n", FUNC3(&t));
	}
	FUNC8("</body></html>\n");
	return EXIT_SUCCESS;
}