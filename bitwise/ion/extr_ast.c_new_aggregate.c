
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_items; int items; int kind; int pos; } ;
typedef int SrcPos ;
typedef int AggregateKind ;
typedef int AggregateItem ;
typedef TYPE_1__ Aggregate ;


 int AST_DUP (int *) ;
 TYPE_1__* ast_alloc (int) ;

Aggregate *new_aggregate(SrcPos pos, AggregateKind kind, AggregateItem *items, size_t num_items) {
    Aggregate *aggregate = ast_alloc(sizeof(Aggregate));
    aggregate->pos = pos;
    aggregate->kind = kind;
    aggregate->items = AST_DUP(items);
    aggregate->num_items = num_items;
    return aggregate;
}
