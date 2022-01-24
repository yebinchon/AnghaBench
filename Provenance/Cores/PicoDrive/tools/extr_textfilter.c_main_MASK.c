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
typedef  int /*<<< orphan*/  path_file ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,...) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 

int FUNC12(int argc, char *argv[])
{
	char path[256], path_file[256];
	char buff[1024];
	FILE *fi, *fo;
	int skip_mode = 0, ifdef_level = 0, skip_level = 0, line = 0;
	char *p;

	if (argc < 3)
	{
		FUNC8("usage:\n%s <file_in> <file_out> [defines...]\n", argv[0]);
		return 1;
	}

	fi = FUNC5(argv[1], "r");
	if (fi == NULL)
	{
		FUNC8("failed to open: %s\n", argv[1]);
		return 2;
	}

	fo = FUNC5(argv[2], "wb");
	if (fo == NULL)
	{
		FUNC8("failed to open: %s\n", argv[2]);
		return 3;
	}

	FUNC9(path, sizeof(path), "%s", argv[1]);
	for (p = path + FUNC10(path) - 1; p > path; p--) {
		if (*p == '/' || *p == '\\') {
			p[1] = 0;
			break;
		}
	}

	for (++line; !FUNC3(fi); line++)
	{
		char *fgs;

		fgs = FUNC4(buff, sizeof(buff), fi);
		if (fgs == NULL) break;

		if (buff[0] == '#')
		{
			/* control char */
			if (FUNC11(buff, "#ifdef ", 7) == 0)
			{
				ifdef_level++;
				if (!skip_mode && !FUNC0((void *) &argv[3], argc-3, buff + 7))
					skip_mode = 1, skip_level = ifdef_level;
			}
			else if (FUNC11(buff, "#ifndef ", 8) == 0)
			{
				ifdef_level++;
				if (!skip_mode &&  FUNC0((void *) &argv[3], argc-3, buff + 8))
					skip_mode = 1, skip_level = ifdef_level;
			}
			else if (FUNC11(buff, "#else", 5) == 0)
			{
				if (!skip_mode || skip_level == ifdef_level)
					skip_mode ^= 1, skip_level = ifdef_level;
			}
			else if (FUNC11(buff, "#endif", 6) == 0)
			{
				if (skip_level == ifdef_level)
					skip_mode = 0;
				ifdef_level--;
				if (ifdef_level == 0) skip_mode = 0;
				if (ifdef_level < 0)
				{
					FUNC8("%i: warning: #endif without #ifdef, ignoring\n", line);
					ifdef_level = 0;
				}
			}
			else if (FUNC11(buff, "#include ", 9) == 0)
			{
				char *pe, *p = buff + 9;
				FILE *ftmp;
				if (skip_mode)
					continue;
				while (*p && (*p == ' ' || *p == '\"'))
					p++;
				for (pe = p + FUNC10(p) - 1; pe > p; pe--) {
					if (FUNC6(*pe) || *pe == '\"') *pe = 0;
					else break;
				}
				FUNC9(path_file, sizeof(path_file), "%s%s", path, p);
				ftmp = FUNC5(path_file, "r");
				if (ftmp == NULL) {
					FUNC8("%i: error: failed to include \"%s\"\n", line, p);
					return 1;
				}
				while (!FUNC3(ftmp))
				{
					fgs = FUNC4(buff, sizeof(buff), ftmp);
					if (fgs == NULL)
						break;
					FUNC7(buff, fo);
				}
				FUNC2(ftmp);
				continue;
			}

			/* skip line */
			continue;
		}
		if (!skip_mode)
		{
			FUNC1(buff);
			FUNC7(buff, fo);
		}
	}

	FUNC2(fi);
	FUNC2(fo);

	return 0;
}