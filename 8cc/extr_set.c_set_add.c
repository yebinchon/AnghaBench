
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* v; struct TYPE_5__* next; } ;
typedef TYPE_1__ Set ;


 TYPE_1__* malloc (int) ;

Set *set_add(Set *s, char *v) {
    Set *r = malloc(sizeof(Set));
    r->next = s;
    r->v = v;
    return r;
}
