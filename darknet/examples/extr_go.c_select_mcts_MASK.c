#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network ;
struct TYPE_4__ {int done; float result; float* prob; float* mean; float* prior; int* visit_count; float* board; int* value; int pass; struct TYPE_4__** children; int /*<<< orphan*/  total_count; } ;
typedef  TYPE_1__ mcts_tree ;

/* Variables and functions */
 float* FUNC0 (float*) ; 
 TYPE_1__* FUNC1 (float*,float*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,int,int,int) ; 
 float FUNC5 (int /*<<< orphan*/ ) ; 

float FUNC6(mcts_tree *root, network *net, float *prev, float cpuct)
{
    if(root->done) return -root->result;
    int i;
    float max = -1000;
    int max_i = 0;
    for(i = 0; i < 19*19+1; ++i){
        root->prob[i] = root->mean[i] + cpuct*root->prior[i] * FUNC5(root->total_count) / (1. + root->visit_count[i]);
        if(root->prob[i] > max){
            max = root->prob[i];
            max_i = i;
        }
    }
    float val;
    i = max_i;
    root->visit_count[i]++;
    root->total_count++;
    if (root->children[i]) {
        val = FUNC6(root->children[i], net, root->board, cpuct);
    } else {
        if(max_i < 19*19 && !FUNC3(root->board, prev, 1, max_i/19, max_i%19)) {
            root->mean[i]  = -1;
            root->value[i] = -1;
            root->prior[i] = 0;
            --root->total_count;
            return FUNC6(root, net, prev, cpuct);
            //printf("Detected ko\n");
            //getchar();
        } else {
            float *next = FUNC0(root->board);
            if (max_i < 19*19) {
                FUNC4(next, 1, max_i / 19, max_i % 19);
            }
            FUNC2(next);
            root->children[i] = FUNC1(next, root->board, net);
            val = -root->children[i]->result;
            if(max_i == 19*19){
                root->children[i]->pass = 1;
                if (root->pass){
                    root->children[i]->done = 1;
                }
            }
        }
    }
    root->value[i] += val;
    root->mean[i] = root->value[i]/root->visit_count[i];
    return -val;
}