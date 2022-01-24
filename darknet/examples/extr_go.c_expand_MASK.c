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
typedef  int /*<<< orphan*/  network ;
struct TYPE_3__ {float* board; float* mean; int* value; int total_count; float result; scalar_t__* prior; scalar_t__* visit_count; void* prob; void* children; } ;
typedef  TYPE_1__ mcts_tree ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,float*,int,scalar_t__*,int) ; 
 float* FUNC2 (int /*<<< orphan*/ *,float*) ; 
 scalar_t__ FUNC3 (float*,int) ; 

mcts_tree *FUNC4(float *next, float *ko, network *net)
{
    mcts_tree *root = FUNC0(1, sizeof(mcts_tree));
    root->board = next;
    root->children = FUNC0(19*19+1, sizeof(mcts_tree*));
    root->prior = FUNC0(19*19 + 1, sizeof(float));
    root->prob = FUNC0(19*19 + 1, sizeof(float));
    root->mean = FUNC0(19*19 + 1, sizeof(float));
    root->value = FUNC0(19*19 + 1, sizeof(float));
    root->visit_count = FUNC0(19*19 + 1, sizeof(int));
    root->total_count = 1;
    int i;
    float *pred = FUNC2(net, next);
    FUNC1(19*19+1, pred, 1, root->prior, 1);
    float val = 2*pred[19*19 + 1] - 1;
    root->result = val;
    for(i = 0; i < 19*19+1; ++i) {
        root->visit_count[i] = 0;
        root->value[i] = 0;
        root->mean[i] = val;
        if(i < 19*19 && FUNC3(next, i)){
            root->value[i] = -1;
            root->mean[i] = -1;
            root->prior[i] = 0;
        }
    }
    //print_board(stderr, next, flip?-1:1, 0);
    return root;
}