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

/* Variables and functions */
 unsigned long DBG_TRACE ; 
 unsigned long KDBG_CLASS_MAX ; 
 unsigned long KDBG_CSC_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdbg_typefilter ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const char *filter_desc)
{
	char *end = NULL;

	FUNC1();

	FUNC0(filter_desc != NULL);

	FUNC5(kdbg_typefilter);
	FUNC3(kdbg_typefilter, DBG_TRACE);

	/* if the filter description starts with a number, assume it's a csc */
	if (filter_desc[0] >= '0' && filter_desc[0] <= '9'){
		unsigned long csc = FUNC2(filter_desc, NULL, 0);
		if (filter_desc != end && csc <= KDBG_CSC_MAX) {
			FUNC4(kdbg_typefilter, csc);
		}
		return;
	}

	while (filter_desc[0] != '\0') {
		unsigned long allow_value;

		char filter_type = filter_desc[0];
		if (filter_type != 'C' && filter_type != 'S') {
			return;
		}
		filter_desc++;

		allow_value = FUNC2(filter_desc, &end, 0);
		if (filter_desc == end) {
			/* cannot parse as integer */
			return;
		}

		switch (filter_type) {
			case 'C':
				if (allow_value <= KDBG_CLASS_MAX) {
					FUNC3(kdbg_typefilter, allow_value);
				} else {
					/* illegal class */
					return;
				}
				break;
			case 'S':
				if (allow_value <= KDBG_CSC_MAX) {
					FUNC4(kdbg_typefilter, allow_value);
				} else {
					/* illegal class subclass */
					return;
				}
				break;
			default:
				return;
		}

		/* advance to next filter entry */
		filter_desc = end;
		if (filter_desc[0] == ',') {
			filter_desc++;
		}
	}
}