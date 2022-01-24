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
struct TYPE_3__ {int /*<<< orphan*/  walkerMode; int /*<<< orphan*/ ** rangeTableList; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ ExtractRangeTableWalkerContext ;

/* Variables and functions */
 int /*<<< orphan*/  EXTRACT_ALL_ENTRIES ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

bool
FUNC1(Node *node, List **rangeTableList)
{
	ExtractRangeTableWalkerContext context;

	context.rangeTableList = rangeTableList;
	context.walkerMode = EXTRACT_ALL_ENTRIES;

	return FUNC0(node, &context);
}