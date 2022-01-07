
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; void** val; int ** key; } ;
typedef TYPE_1__ Map ;


 int * TOMBSTONE ;
 int hash (char*) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static void *map_get_nostack(Map *m, char *key) {
    if (!m->key)
        return ((void*)0);
    int mask = m->size - 1;
    int i = hash(key) & mask;
    for (; m->key[i] != ((void*)0); i = (i + 1) & mask)
        if (m->key[i] != TOMBSTONE && !strcmp(m->key[i], key))
            return m->val[i];
    return ((void*)0);
}
