#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct map {scalar_t__ size; } ;
struct TYPE_6__ {int /*<<< orphan*/  points; int /*<<< orphan*/  calls; int /*<<< orphan*/  end; int /*<<< orphan*/  exit; int /*<<< orphan*/  returns; int /*<<< orphan*/  entry; } ;
struct TYPE_5__ {scalar_t__ x; } ;
typedef  int /*<<< orphan*/  Apply ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL ; 
 scalar_t__ IR ; 
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  STATIC ; 
 scalar_t__ YYcounts ; 
 scalar_t__ YYlink ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ bbcall ; 
 scalar_t__ bbentry ; 
 scalar_t__ bbexit ; 
 scalar_t__ bbfunc ; 
 scalar_t__ bbincr ; 
 scalar_t__ bbvars ; 
 TYPE_2__ events ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* maplist ; 
 int ncalled ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char**) ; 
 int /*<<< orphan*/  unsignedtype ; 

void FUNC9(int argc, char *argv[]) {
	int i;
	static int inited;

	if (inited)
		return;
	inited = 1;
	FUNC8(argc, argv);
	if (IR)
		for (i = 1; i < argc; i++)
			if (FUNC7(argv[i], "-a", 2) == 0) {
				if (ncalled == -1
				&& FUNC5(argv[i][2] ? &argv[i][2] : "prof.out") > 0)
					ncalled = 0;
			} else if ((FUNC6(argv[i], "-b") == 0
			         || FUNC6(argv[i], "-C") == 0) && YYlink == 0) {
				YYlink = FUNC4(STATIC, FUNC2(unsignedtype, 0, 0), GLOBAL);
				FUNC3((Apply)bbentry, YYlink, &events.entry);
				FUNC3((Apply)bbexit,  YYlink, &events.returns);
				FUNC3((Apply)bbfunc,  YYlink, &events.exit);
				FUNC3((Apply)bbvars,  YYlink, &events.end);
				if (FUNC6(argv[i], "-b") == 0) {
					YYcounts = FUNC4(STATIC, FUNC2(unsignedtype, 0, 0), GLOBAL);
					maplist = FUNC1(FUNC0(sizeof (struct map), PERM), maplist);
					((struct map *)maplist->x)->size = 0;
					FUNC3((Apply)bbcall, YYcounts, &events.calls);
					FUNC3((Apply)bbincr, YYcounts, &events.points);
				}
			}
}