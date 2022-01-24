#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_7__ {int off; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int set; int /*<<< orphan*/  bitmap; } ;
struct TYPE_8__ {TYPE_2__ terminal; TYPE_1__ branch; } ;
typedef  TYPE_3__ ccv_cache_index_t ;
typedef  int /*<<< orphan*/  (* ccv_cache_index_free_f ) (void*) ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void FUNC5(ccv_cache_index_t* branch, ccv_cache_index_free_f ffree[])
{
	int leaf = branch->terminal.off & 0x1;
	if (!leaf)
	{
		int i;
		uint64_t total = FUNC3(branch->branch.bitmap);
		ccv_cache_index_t* set = (ccv_cache_index_t*)(branch->branch.set - (branch->branch.set & 0x3));
		for (i = 0; i < total; i++)
			FUNC5(set + i, ffree);
		FUNC2(set);
	} else {
		FUNC1(FUNC0(branch->terminal.type) >= 0 && FUNC0(branch->terminal.type) < 16);
		ffree[FUNC0(branch->terminal.type)]((void*)(branch->terminal.off - (branch->terminal.off & 0x3)));
	}
}