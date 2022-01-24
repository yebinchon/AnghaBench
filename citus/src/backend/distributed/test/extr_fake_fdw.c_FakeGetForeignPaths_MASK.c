#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rows; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ Cost ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(PlannerInfo *root, RelOptInfo *baserel, Oid foreigntableid)
{
	Cost startup_cost = 0;
	Cost total_cost = startup_cost + baserel->rows;

	FUNC0(baserel, (Path *) FUNC1(root, baserel, NULL, baserel->rows,
													   startup_cost, total_cost, NIL,
													   NULL, NULL, NIL));
}