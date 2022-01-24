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
struct TYPE_5__ {struct TYPE_5__** children; } ;
typedef  TYPE_1__ mcts_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

mcts_tree *FUNC1(mcts_tree *tree, int index)
{
    if(index < 0 || index > 19*19 || !tree || !tree->children[index]) {
        FUNC0(tree);
        tree = 0;
    } else {
        mcts_tree *swap = tree;
        tree = tree->children[index];
        swap->children[index] = 0;
        FUNC0(swap);
    }
    return tree;
}