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
typedef  int /*<<< orphan*/  start ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int O_CREAT ; 
 int O_EXLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,struct stat*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 int FUNC12 (char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char const*) ; 
 size_t FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(int argc, char * argv[])
{
	struct stat sb;
	int ret;
	int dstfd;
	FILE *dst = NULL;
	const char *json_output = NULL;
	const char *cwd = NULL;
	const char *input_file = NULL;
	char start[2];
	size_t read_bytes;
	int i;
	size_t input_file_len;

	if (argc < 5) {
		FUNC16();
	}

	json_output = argv[1];
	cwd = argv[2];
	input_file = argv[3];

	argv += 4;
	argc -= 4;

	input_file_len = FUNC15(input_file);
	if (!(input_file_len > 2 && 0 == FUNC14(".c",   input_file + input_file_len - 2)) &&
		!(input_file_len > 3 && 0 == FUNC14(".cp",  input_file + input_file_len - 3)) &&
		!(input_file_len > 4 && 0 == FUNC14(".cpp", input_file + input_file_len - 4))) {
		/* Not a C/C++ file, just skip it */
		return 0;
	}

	dstfd = FUNC12(json_output, O_RDWR | O_CREAT | O_EXLOCK, DEFFILEMODE);
	if (dstfd < 0)
		FUNC1(EX_NOINPUT, "open(%s)", json_output);

	ret = FUNC10(dstfd, &sb);
	if (ret < 0)
		FUNC1(EX_NOINPUT, "fstat(%s)", json_output);

	if (!FUNC0(sb.st_mode))
		FUNC1(EX_USAGE, "%s is not a regular file", json_output);

	dst = FUNC4(dstfd, "w+");
	if (dst == NULL)
		FUNC1(EX_UNAVAILABLE, "fdopen");

	read_bytes = FUNC7(start, sizeof(start[0]), sizeof(start)/sizeof(start[0]), dst);
	if ((read_bytes != sizeof(start)) || (0 != FUNC11(start, "[\n", sizeof(start)/sizeof(start[0])))) {
		/* no JSON start, we don't really care why */
		ret = FUNC9(dst, 0, SEEK_SET);
		if (ret < 0)
			FUNC1(EX_UNAVAILABLE, "fseeko");

		ret = FUNC6("[", dst);
		if (ret < 0)
			FUNC1(EX_UNAVAILABLE, "fputs");
	} else {
		/* has at least two bytes at the start. Seek to 3 bytes before the end */
		ret = FUNC9(dst, -3, SEEK_END);
		if (ret < 0)
			FUNC1(EX_UNAVAILABLE, "fseeko");

		ret = FUNC6(",", dst);
		if (ret < 0)
			FUNC1(EX_UNAVAILABLE, "fputs");
	}

	FUNC5(dst, "\n");
	FUNC5(dst, "{\n");
	FUNC5(dst, "  \"directory\": \"%s\",\n", cwd);
	FUNC5(dst, "  \"file\": \"%s\",\n", input_file);
	FUNC5(dst, "  \"command\": \"");
	for (i=0; i < argc; i++) {
		bool needs_escape = FUNC13(argv[i], '\\') || FUNC13(argv[i], '"') || FUNC13(argv[i], ' ');
		
		if (needs_escape) {
			char *escaped_string = FUNC2(argv[i]);
			FUNC5(dst, "%s\\\"%s\\\"", i == 0 ? "" : " ", escaped_string);
			FUNC8(escaped_string);
		} else {
			FUNC5(dst, "%s%s", i == 0 ? "" : " ", argv[i]);
		}
	}
	FUNC5(dst, "\"\n");
	FUNC5(dst, "}\n");
	FUNC5(dst, "]\n");

	ret = FUNC3(dst);
	if (ret < 0)
		FUNC1(EX_UNAVAILABLE, "fclose");

	return 0;
}