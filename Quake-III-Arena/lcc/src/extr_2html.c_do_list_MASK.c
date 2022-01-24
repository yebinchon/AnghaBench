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
typedef  int /*<<< orphan*/  list_ty ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(list_ty x, void do_one(void *), char *type, char *listhtml, char *separator) {
	int count = FUNC1(x);

	if (count == 0)
		FUNC2("<em>empty %s list</em>\n", type);
	else {
		int i;
		FUNC2("<em>%s list</em>", type);
		if (listhtml != NULL)
			FUNC2("<%s>\n", listhtml);
		for (i = 0; i < count; i++) {
			if (listhtml != NULL)
				FUNC2("<li>");
			FUNC2(separator);
			do_one(FUNC0(x, i));
			if (listhtml != NULL)
				FUNC2("</li>\n");
		}
		if (listhtml != NULL)
			FUNC2("</%s>\n", listhtml);
	}
}