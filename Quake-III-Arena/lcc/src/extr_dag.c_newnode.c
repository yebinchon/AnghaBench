
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
typedef int Symbol ;
typedef int * Node ;


 TYPE_1__* dagnode (int,int *,int *,int ) ;

Node newnode(int op, Node l, Node r, Symbol sym) {
 return &dagnode(op, l, r, sym)->node;
}
