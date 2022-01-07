
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int network ;
struct TYPE_4__ {int done; float result; float* prob; float* mean; float* prior; int* visit_count; float* board; int* value; int pass; struct TYPE_4__** children; int total_count; } ;
typedef TYPE_1__ mcts_tree ;


 float* copy_board (float*) ;
 TYPE_1__* expand (float*,float*,int *) ;
 int flip_board (float*) ;
 int legal_go (float*,float*,int,int,int) ;
 int move_go (float*,int,int,int) ;
 float sqrt (int ) ;

float select_mcts(mcts_tree *root, network *net, float *prev, float cpuct)
{
    if(root->done) return -root->result;
    int i;
    float max = -1000;
    int max_i = 0;
    for(i = 0; i < 19*19+1; ++i){
        root->prob[i] = root->mean[i] + cpuct*root->prior[i] * sqrt(root->total_count) / (1. + root->visit_count[i]);
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
        val = select_mcts(root->children[i], net, root->board, cpuct);
    } else {
        if(max_i < 19*19 && !legal_go(root->board, prev, 1, max_i/19, max_i%19)) {
            root->mean[i] = -1;
            root->value[i] = -1;
            root->prior[i] = 0;
            --root->total_count;
            return select_mcts(root, net, prev, cpuct);


        } else {
            float *next = copy_board(root->board);
            if (max_i < 19*19) {
                move_go(next, 1, max_i / 19, max_i % 19);
            }
            flip_board(next);
            root->children[i] = expand(next, root->board, net);
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
