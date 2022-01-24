#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* stabline ) (TYPE_1__*) ;} ;
struct TYPE_5__ {scalar_t__ file; scalar_t__ y; } ;
typedef  TYPE_1__ Coordinate ;

/* Variables and functions */
 int /*<<< orphan*/  comment ; 
 scalar_t__ currentfile ; 
 scalar_t__ currentline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * srcfp ; 
 scalar_t__ srcpos ; 
 TYPE_4__ stabIR ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(Coordinate *cp) {
	if (cp->file && cp->file != currentfile) {
		if (srcfp)
			FUNC0(srcfp);
		currentfile = cp->file;
		srcfp = FUNC2(currentfile, "r");
		srcpos = 0;
		currentline = 0;
	}
	if (currentline != cp->y && srcfp) {
		char buf[512];
		if (srcpos > cp->y) {
			FUNC4(srcfp);
			srcpos = 0;
		}
		for ( ; srcpos < cp->y; srcpos++)
			if (FUNC1(buf, sizeof buf, srcfp) == NULL) {
				FUNC0(srcfp);
				srcfp = NULL;
				break;
			}
		if (srcfp && srcpos == cp->y)
			FUNC3("%s%s", comment, buf);
	}
	currentline = cp->y;
	if (stabIR.stabline)
		(*stabIR.stabline)(cp);
}