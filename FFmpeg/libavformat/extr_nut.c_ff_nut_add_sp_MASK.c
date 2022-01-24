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
struct AVTreeNode {void* ts; void* back_ptr; void* pos; } ;
typedef  void* int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  syncpoints; int /*<<< orphan*/  sp_count; } ;
typedef  struct AVTreeNode Syncpoint ;
typedef  TYPE_1__ NUTContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct AVTreeNode*) ; 
 int /*<<< orphan*/  FUNC2 (struct AVTreeNode**) ; 
 struct AVTreeNode* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct AVTreeNode*,int /*<<< orphan*/ ,struct AVTreeNode**) ; 
 struct AVTreeNode* FUNC5 () ; 
 int /*<<< orphan*/  ff_nut_sp_pos_cmp ; 

int FUNC6(NUTContext *nut, int64_t pos, int64_t back_ptr, int64_t ts)
{
    Syncpoint *sp           = FUNC3(sizeof(Syncpoint));
    struct AVTreeNode *node = FUNC5();

    if (!sp || !node) {
        FUNC2(&sp);
        FUNC2(&node);
        return FUNC0(ENOMEM);
    }

    nut->sp_count++;

    sp->pos      = pos;
    sp->back_ptr = back_ptr;
    sp->ts       = ts;
    FUNC4(&nut->syncpoints, sp, ff_nut_sp_pos_cmp, &node);
    if (node) {
        FUNC1(sp);
        FUNC1(node);
    }

    return 0;
}