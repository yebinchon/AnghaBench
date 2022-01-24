#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* str; struct TYPE_3__* link; } ;
typedef  TYPE_1__* List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbose ; 

__attribute__((used)) static void FUNC2(List list) {
	if (list) {
		List b = list;
		if (verbose)
			FUNC0(stderr, "rm");
		do {
			if (verbose)
				FUNC0(stderr, " %s", b->str);
			if (verbose < 2)
				FUNC1(b->str);
		} while ((b = b->link) != list);
		if (verbose)
			FUNC0(stderr, "\n");
	}
}