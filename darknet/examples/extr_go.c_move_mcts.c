
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__** children; } ;
typedef TYPE_1__ mcts_tree ;


 int free_mcts (TYPE_1__*) ;

mcts_tree *move_mcts(mcts_tree *tree, int index)
{
    if(index < 0 || index > 19*19 || !tree || !tree->children[index]) {
        free_mcts(tree);
        tree = 0;
    } else {
        mcts_tree *swap = tree;
        tree = tree->children[index];
        swap->children[index] = 0;
        free_mcts(swap);
    }
    return tree;
}
