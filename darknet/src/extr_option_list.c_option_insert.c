
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int list ;
struct TYPE_4__ {char* key; char* val; scalar_t__ used; } ;
typedef TYPE_1__ kvp ;


 int list_insert (int *,TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

void option_insert(list *l, char *key, char *val)
{
    kvp *p = malloc(sizeof(kvp));
    p->key = key;
    p->val = val;
    p->used = 0;
    list_insert(l, p);
}
