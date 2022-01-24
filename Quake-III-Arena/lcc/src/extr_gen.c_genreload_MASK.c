#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_5__** kids; } ;
struct TYPE_23__ {TYPE_3__ x; int /*<<< orphan*/ * kids; int /*<<< orphan*/  op; } ;
struct TYPE_19__ {int /*<<< orphan*/  name; } ;
struct TYPE_22__ {TYPE_1__ x; } ;
struct TYPE_20__ {int /*<<< orphan*/  size; } ;
struct TYPE_18__ {TYPE_2__ ptrmetric; } ;
typedef  TYPE_4__* Symbol ;
typedef  TYPE_5__* Node ;

/* Variables and functions */
 scalar_t__ ADDRL ; 
 scalar_t__ INDIR ; 
 TYPE_17__* IR ; 
 scalar_t__ P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 void* FUNC4 (scalar_t__,TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC10(Node p, Symbol tmp, int i) {
	Node q;
	int ty;

	FUNC0(FUNC2(stderr, "(replacing %x with a reload from %s)\n", p->x.kids[i], tmp->x.name));
	FUNC0(FUNC2(stderr, "(genreload: "));
	FUNC0(FUNC1(p->x.kids[i]));
	FUNC0(FUNC2(stderr, ")\n"));
	ty = FUNC5(p->x.kids[i]->op);
	q = FUNC4(ADDRL+P + FUNC9(IR->ptrmetric.size), NULL, NULL, tmp);
	p->x.kids[i] = FUNC4(INDIR + ty, q, NULL, NULL);
	FUNC8(p->x.kids[i]);
	FUNC6(p->x.kids[i], &q);
	FUNC7(&p->kids[1], FUNC7(&p->kids[0], 0, i, p), i, p);
	FUNC6(p, &q);
	FUNC3(p->x.kids[i], p);
}