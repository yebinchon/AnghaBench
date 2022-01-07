
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pos; scalar_t__ savings; } ;
typedef TYPE_1__ dictItem ;
typedef int U32 ;


 int ZDICT_removeDictItem (TYPE_1__*,int) ;
 int ZDICT_tryMerge (TYPE_1__*,TYPE_1__,int,void const*) ;

__attribute__((used)) static void ZDICT_insertDictItem(dictItem* table, U32 maxSize, dictItem elt, const void* buffer)
{

    U32 mergeId = ZDICT_tryMerge(table, elt, 0, buffer);
    if (mergeId) {
        U32 newMerge = 1;
        while (newMerge) {
            newMerge = ZDICT_tryMerge(table, table[mergeId], mergeId, buffer);
            if (newMerge) ZDICT_removeDictItem(table, mergeId);
            mergeId = newMerge;
        }
        return;
    }


    { U32 current;
        U32 nextElt = table->pos;
        if (nextElt >= maxSize) nextElt = maxSize-1;
        current = nextElt-1;
        while (table[current].savings < elt.savings) {
            table[current+1] = table[current];
            current--;
        }
        table[current+1] = elt;
        table->pos = nextElt+1;
    }
}
