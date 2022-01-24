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
struct TYPE_2__ {int n; scalar_t__* string; } ;

/* Variables and functions */
 int CODE ; 
 int EOF ; 
 int ID ; 
 int INT ; 
 int INT_MAX ; 
 int PPERCENT ; 
 int START ; 
 int TEMPLATE ; 
 int TERMINAL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* bp ; 
 scalar_t__ code ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  ppercent ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 TYPE_1__ yylval ; 

int FUNC12(void) {
	int c;

	if (code) {
		char *p;
		bp += FUNC10(bp, " \t\f");
		p = FUNC7(bp, '\n');
		if (p == NULL)
			p = FUNC7(bp, '\n');
		while (p > bp && FUNC6(p[-1]))
			p--;
		yylval.string = FUNC0(p - bp + 1);
		FUNC9(yylval.string, bp, p - bp);
		yylval.string[p - bp] = 0;
		bp = p;
		code--;
		return CODE;
	}
	while ((c = FUNC2()) != EOF) {
		switch (c) {
		case ' ': case '\f': case '\t':
			continue;
		case '\n':
		case '(': case ')': case ',':
		case ':': case '=':
			return c;
		}
		if (c == '%' && *bp == '%') {
			bp++;
			return ppercent++ ? 0 : PPERCENT;
		} else if (c == '%' && FUNC8(bp, "term", 4) == 0
		&& FUNC6(bp[4])) {
			bp += 4;
			return TERMINAL;
		} else if (c == '%' && FUNC8(bp, "start", 5) == 0
		&& FUNC6(bp[5])) {
			bp += 5;
			return START;
		} else if (c == '"') {
			char *p = FUNC7(bp, '"');
			if (p == NULL) {
				FUNC11("missing \" in assembler template\n");
				p = FUNC7(bp, '\n');
				if (p == NULL)
					p = FUNC7(bp, '\0');
			}
			FUNC1(p);
			yylval.string = FUNC0(p - bp + 1);
			FUNC9(yylval.string, bp, p - bp);
			yylval.string[p - bp] = 0;
			bp = *p == '"' ? p + 1 : p;
			code++;
			return TEMPLATE;
		} else if (FUNC4(c)) {
			int n = 0;
			do {
				int d = c - '0';
				if (n > (INT_MAX - d)/10)
					FUNC11("integer greater than %d\n", INT_MAX);
				else
					n = 10*n + d;
				c = FUNC2();
			} while (c != EOF && FUNC4(c));
			bp--;
			yylval.n = n;
			return INT;
		} else if (FUNC3(c)) {
			char *p = bp - 1;
			while (FUNC3(*bp) || FUNC4(*bp) || *bp == '_')
				bp++;
			yylval.string = FUNC0(bp - p + 1);
			FUNC9(yylval.string, p, bp - p);
			yylval.string[bp - p] = 0;
			return ID;
		} else if (FUNC5(c))
			FUNC11("invalid character `%c'\n", c);
		else
			FUNC11("invalid character `\\%03o'\n", (unsigned char)c);
	}
	return 0;
}