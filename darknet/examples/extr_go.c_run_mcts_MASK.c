#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network ;
struct TYPE_6__ {int* visit_count; int /*<<< orphan*/  board; } ;
typedef  TYPE_1__ mcts_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,float*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,float*,float) ; 
 double FUNC7 () ; 

mcts_tree *FUNC8(mcts_tree *tree, network *net, float *board, float *ko, int player, int n, float cpuct, float secs)
{
    int i;
    double t = FUNC7();
    if(player < 0) FUNC4(board);
    if(!tree) tree = FUNC3(FUNC2(board), ko, net);
    FUNC0(FUNC1(tree->board, board));
    for(i = 0; i < n; ++i){
        if (secs > 0 && (FUNC7() - t) > secs) break;
        int max_i = FUNC5(tree->visit_count, 19*19+1);
        if (tree->visit_count[max_i] >= n) break;
        FUNC6(tree, net, ko, cpuct);
    }
    if(player < 0) FUNC4(board);
    //fprintf(stderr, "%f Seconds\n", what_time_is_it_now() - t);
    return tree;
}