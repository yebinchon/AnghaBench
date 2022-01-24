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
typedef  int /*<<< orphan*/  cwd ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*,int) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

int FUNC13(int argc, char *argv[])
{
	char buff[1024], *p;
	char cwd[4096];
	FILE *f;
	int l, pos, pos1, old_len, cwd_len;

	if (argc != 2) return 1;

	FUNC5(cwd, sizeof(cwd));
	cwd_len = FUNC11(cwd);
	if (cwd[cwd_len-1] != '/') {
		cwd[cwd_len++] = '/';
		cwd[cwd_len] = 0;
	}

	f = FUNC1(argv[1], "rb+");
	if (f == NULL) return 2;

	while (1)
	{
readnext:
		l = FUNC2(buff, 1, sizeof(buff), f);
		if (l <= 16) break;

		pos = 0;
		while (pos < l)
		{
			pos1 = FUNC10(buff + pos, l - pos);
			if (pos1 < 0) {
				FUNC3(f, -6, SEEK_CUR);
				goto readnext;
			}
			pos += pos1;

			while (pos > 0 && FUNC6(buff[pos-1])) pos--;

			if (pos == 0) {
				FUNC3(f, -(sizeof(buff) + 16), SEEK_CUR);
				goto readnext;
			}

			// paths must start with /
			while (pos < l && buff[pos] != '/') pos++;
			p = buff + pos;
			old_len = FUNC11(p);

			if (!FUNC7(p)) {
				pos += old_len;
				continue;
			}

			if (FUNC12(p, cwd, cwd_len) != 0) {
				FUNC9("can't handle: %s\n", p);
				pos += old_len;
				continue;
			}

			FUNC8(p, p + cwd_len, old_len - cwd_len + 1);
			FUNC3(f, -(sizeof(buff) - pos), SEEK_CUR);
			FUNC4(p, 1, old_len, f);
			goto readnext;
		}
	}

	FUNC0(f);

	return 0;
}