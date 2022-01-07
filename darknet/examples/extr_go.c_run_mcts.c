
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int network ;
struct TYPE_6__ {int* visit_count; int board; } ;
typedef TYPE_1__ mcts_tree ;


 int assert (int ) ;
 int compare_board (int ,float*) ;
 int copy_board (float*) ;
 TYPE_1__* expand (int ,float*,int *) ;
 int flip_board (float*) ;
 int max_int_index (int*,int) ;
 int select_mcts (TYPE_1__*,int *,float*,float) ;
 double what_time_is_it_now () ;

mcts_tree *run_mcts(mcts_tree *tree, network *net, float *board, float *ko, int player, int n, float cpuct, float secs)
{
    int i;
    double t = what_time_is_it_now();
    if(player < 0) flip_board(board);
    if(!tree) tree = expand(copy_board(board), ko, net);
    assert(compare_board(tree->board, board));
    for(i = 0; i < n; ++i){
        if (secs > 0 && (what_time_is_it_now() - t) > secs) break;
        int max_i = max_int_index(tree->visit_count, 19*19+1);
        if (tree->visit_count[max_i] >= n) break;
        select_mcts(tree, net, ko, cpuct);
    }
    if(player < 0) flip_board(board);

    return tree;
}
