
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int color; struct TYPE_7__** child; } ;
struct TYPE_6__ {int color; TYPE_4__** child; } ;
typedef TYPE_1__ CheckasmFunc ;


 scalar_t__ is_red (TYPE_4__*) ;
 TYPE_1__* rotate_tree (TYPE_1__*,int) ;

__attribute__((used)) static void balance_tree(CheckasmFunc **root)
{
    CheckasmFunc *f = *root;

    if (is_red(f->child[0]) && is_red(f->child[1])) {
        f->color ^= 1;
        f->child[0]->color = f->child[1]->color = 1;
    }

    if (!is_red(f->child[0]) && is_red(f->child[1]))
        *root = rotate_tree(f, 0);
    else if (is_red(f->child[0]) && is_red(f->child[0]->child[0]))
        *root = rotate_tree(f, 1);
}
