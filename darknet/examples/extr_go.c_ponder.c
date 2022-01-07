
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int network ;
struct TYPE_6__ {int total_count; } ;
typedef TYPE_1__ mcts_tree ;


 int fprintf (int ,char*,int) ;
 TYPE_1__* run_mcts (TYPE_1__*,int *,float*,float*,int,int,float,double) ;
 int stderr ;
 int stdin_ready () ;
 double what_time_is_it_now () ;

mcts_tree *ponder(mcts_tree *tree, network *net, float *b, float *ko, int player, float cpuct)
{
    double t = what_time_is_it_now();
    int count = 0;
    if (tree) count = tree->total_count;
    while(!stdin_ready()){
        if (what_time_is_it_now() - t > 120) break;
        tree = run_mcts(tree, net, b, ko, player, 100000, cpuct, .1);
    }
    fprintf(stderr, "Pondered %d moves...\n", tree->total_count - count);
    return tree;
}
