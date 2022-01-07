
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ color; struct TYPE_4__** child; } ;
typedef TYPE_1__ CheckasmFunc ;



__attribute__((used)) static CheckasmFunc *rotate_tree(CheckasmFunc *f, int dir)
{
    CheckasmFunc *r = f->child[dir^1];
    f->child[dir^1] = r->child[dir];
    r->child[dir] = f;
    r->color = f->color;
    f->color = 0;
    return r;
}
