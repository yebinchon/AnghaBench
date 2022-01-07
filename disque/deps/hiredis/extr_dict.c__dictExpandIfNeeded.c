
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int used; } ;
typedef TYPE_1__ dict ;


 int DICT_HT_INITIAL_SIZE ;
 int DICT_OK ;
 int dictExpand (TYPE_1__*,int) ;

__attribute__((used)) static int _dictExpandIfNeeded(dict *ht) {


    if (ht->size == 0)
        return dictExpand(ht, DICT_HT_INITIAL_SIZE);
    if (ht->used == ht->size)
        return dictExpand(ht, ht->size*2);
    return DICT_OK;
}
