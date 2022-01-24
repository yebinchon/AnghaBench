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
struct TYPE_3__ {struct TYPE_3__** child; int /*<<< orphan*/  elem; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ AVTreeNode ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC1(AVTreeNode *t, int depth)
{
    int i;
    for (i = 0; i < depth * 4; i++)
        FUNC0(NULL, AV_LOG_ERROR, " ");
    if (t) {
        FUNC0(NULL, AV_LOG_ERROR, "Node %p %2d %p\n", t, t->state, t->elem);
        FUNC1(t->child[0], depth + 1);
        FUNC1(t->child[1], depth + 1);
    } else
        FUNC0(NULL, AV_LOG_ERROR, "NULL\n");
}