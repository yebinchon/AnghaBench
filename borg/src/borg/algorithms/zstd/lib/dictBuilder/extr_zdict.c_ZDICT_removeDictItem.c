
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; } ;
typedef TYPE_1__ dictItem ;
typedef int U32 ;



__attribute__((used)) static void ZDICT_removeDictItem(dictItem* table, U32 id)
{

    U32 const max = table[0].pos;
    U32 u;
    if (!id) return;
    for (u=id; u<max-1; u++)
        table[u] = table[u+1];
    table->pos--;
}
