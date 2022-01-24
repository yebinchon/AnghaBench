#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int daddr_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  TYPE_1__* blist_t ;
struct TYPE_7__ {int bl_free; int bl_radix; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC12 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC13(int ac, char **av)
{
	int size = 1024;
	int i;
	blist_t bl;

	for (i = 1; i < ac; ++i) {
		const char *ptr = av[i];
		if (*ptr != '-') {
			size = FUNC12(ptr, NULL, 0);
			continue;
		}
		ptr += 2;
		FUNC8(stderr, "Bad option: %s\n", ptr - 2);
		FUNC5(1);
	}
	bl = FUNC1(size);
	FUNC2(bl, 0, size);

	for (;;) {
		char buf[1024];
		daddr_t da = 0;
		daddr_t count = 0;


		FUNC9("%d/%d/%d> ", bl->bl_free, size, bl->bl_radix);
		FUNC6(stdout);
		if (FUNC7(buf, sizeof(buf), stdin) == NULL)
			break;
		switch(buf[0]) {
		case 'r':
			if (FUNC11(buf + 1, "%d", &count) == 1) {
				FUNC4(&bl, count, 1);
			} else {
				FUNC9("?\n");
			}
		case 'p':
			FUNC3(bl);
			break;
		case 'a':
			if (FUNC11(buf + 1, "%d", &count) == 1) {
				daddr_t blk = FUNC0(bl, count);
				FUNC9("    R=%04x\n", blk);
			} else {
				FUNC9("?\n");
			}
			break;
		case 'f':
			if (FUNC11(buf + 1, "%x %d", &da, &count) == 2) {
				FUNC2(bl, da, count);
			} else {
				FUNC9("?\n");
			}
			break;
		case '?':
		case 'h':
			FUNC10(
			    "p          -print\n"
			    "a %d       -allocate\n"
			    "f %x %d    -free\n"
			    "r %d       -resize\n"
			    "h/?        -help"
			);
			break;
		default:
			FUNC9("?\n");
			break;
		}
	}
	return(0);
}