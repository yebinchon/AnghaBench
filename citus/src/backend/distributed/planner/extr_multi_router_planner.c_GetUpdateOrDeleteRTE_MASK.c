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
struct TYPE_3__ {scalar_t__ resultRelation; int /*<<< orphan*/  rtable; } ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_1__ Query ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RangeTblEntry *
FUNC1(Query *query)
{
	if (query->resultRelation > 0)
	{
		return FUNC0(query->resultRelation, query->rtable);
	}

	return NULL;
}