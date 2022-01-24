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
struct TYPE_3__ {scalar_t__ name; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__** Hideset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__*** hidesets ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC1(int hs)
{
	Hideset np;

	for (np = hidesets[hs]; *np; np++) {
		FUNC0(stderr, (char*)(*np)->name, (*np)->len);
		FUNC0(stderr, " ");
	}
}