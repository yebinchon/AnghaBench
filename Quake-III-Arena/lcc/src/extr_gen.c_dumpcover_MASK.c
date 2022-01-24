#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {short** _nts; int /*<<< orphan*/  (* _kids ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__ x; } ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 TYPE_2__* IR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(Node p, int nt, int in) {
	int rulenum, i;
	short *nts;
	Node kids[10];

	p = FUNC3(p, nt);
	rulenum = FUNC2(p, nt);
	nts = IR->x._nts[rulenum];
	FUNC1(stderr, "dumpcover(%x) = ", p);
	for (i = 0; i < in; i++)
		FUNC1(stderr, " ");
	FUNC0(rulenum);
	(*IR->x._kids)(p, rulenum, kids);
	for (i = 0; nts[i]; i++)
		FUNC5(kids[i], nts[i], in+1);
}