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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  UWORD ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int symtable_user_size ; 

__attribute__((used)) static void FUNC8(const char *filename)
{
	FILE *fp;
	char line[256];
	if (filename == NULL) {
		FUNC7("You must specify a filename\n");
		return;
	}
	/* "rb" and not "r", because we strip EOLs ourselves
	   - this is better, because we can use CR/LF files on Unix */
	fp = FUNC4(filename, "rb");
	if (fp == NULL) {
		FUNC6(filename);
		return;
	}
	FUNC5();
	while (FUNC3(line, sizeof(line), fp)) {
		char *p;
		unsigned int value = 0;
		int digits = 0;
		/* Find first 4 hex digits or more. */
		/* We don't support "Cafe Assembler", "Dead Assembler" or "C0de Assembler". ;-) */
		for (p = line; *p != '\0'; p++) {
			if (*p >= '0' && *p <= '9') {
				value = (value << 4) + *p - '0';
				digits++;
			}
			else if (*p >= 'A' && *p <= 'F') {
				value = (value << 4) + *p - 'A' + 10;
				digits++;
			}
			else if (*p >= 'a' && *p <= 'f') {
				value = (value << 4) + *p - 'a' + 10;
				digits++;
			}
			else if (digits >= 4)
				break;
			else if (*p == '-')
				break; /* ignore labels with negative values */
			else {
				/* note that xasm can put "2" before the label value and mads puts "00" */
				value = 0;
				digits = 0;
			}
		}
		if (*p != ' ' && *p != '\t')
			continue;
		if (value > 0xffff || digits > 8)
			continue;
		do
			p++;
		while (*p == ' ' || *p == '\t');
		FUNC0(p);
		if (*p == '\0')
			continue;
		FUNC1(p, (UWORD) value);
	}
	FUNC2(fp);
	FUNC7("Loaded %d labels\n", symtable_user_size);
}