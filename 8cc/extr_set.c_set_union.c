
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int v; struct TYPE_8__* next; } ;
typedef TYPE_1__ Set ;


 TYPE_1__* set_add (TYPE_1__*,int ) ;
 int set_has (TYPE_1__*,int ) ;

Set *set_union(Set *a, Set *b) {
    Set *r = b;
    for (; a; a = a->next)
        if (!set_has(b, a->v))
            r = set_add(r, a->v);
    return r;
}
