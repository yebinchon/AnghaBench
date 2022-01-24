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
struct TYPE_7__ {int row; int col; int value; int mcts; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ move ;
struct TYPE_8__ {int* visit_count; double result; int* mean; double* prior; TYPE_1__** children; int /*<<< orphan*/  board; } ;
typedef  TYPE_3__ mcts_tree ;
struct TYPE_6__ {double result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,double,double,float,int,double,int) ; 
 int FUNC1 (float*,int) ; 
 int nind ; 
 double FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (float*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (float*,int,int,int*) ; 

move FUNC6(mcts_tree *tree, float temp, int player)
{
    int i;
    float probs[19*19+1] = {0};
    move m = {0};
    double sum = 0;
    /*
    for(i = 0; i < 19*19+1; ++i){
        probs[i] = tree->visit_count[i];
    }
    */
    //softmax(probs, 19*19+1, temp, 1, probs);
    for(i = 0; i < 19*19+1; ++i){
        sum += FUNC2(tree->visit_count[i], 1./temp);
    }
    for(i = 0; i < 19*19+1; ++i){
        probs[i] = FUNC2(tree->visit_count[i], 1./temp) / sum;
    }

    int index = FUNC4(probs, 19*19+1);
    m.row = index / 19;
    m.col = index % 19;
    m.value = (tree->result+1.)/2.;
    m.mcts  = (tree->mean[index]+1.)/2.;

    int indexes[nind];
    FUNC5(probs, 19*19+1, nind, indexes);
    FUNC3(stderr, tree->board, player, indexes);

    FUNC0(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %d, Child Result: %f, Visited: %d\n", index/19, index%19, tree->result, tree->prior[index], probs[index], tree->mean[index], (tree->children[index])?tree->children[index]->result:0, tree->visit_count[index]);
    int ind = FUNC1(probs, 19*19+1);
    FUNC0(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %d, Child Result: %f, Visited: %d\n", ind/19, ind%19, tree->result, tree->prior[ind], probs[ind], tree->mean[ind], (tree->children[ind])?tree->children[ind]->result:0, tree->visit_count[ind]);
    ind = FUNC1(tree->prior, 19*19+1);
    FUNC0(stderr, "%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %d, Child Result: %f, Visited: %d\n", ind/19, ind%19, tree->result, tree->prior[ind], probs[ind], tree->mean[ind], (tree->children[ind])?tree->children[ind]->result:0, tree->visit_count[ind]);
    return m;
}