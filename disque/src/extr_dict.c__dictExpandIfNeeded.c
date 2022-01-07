
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ht; } ;
typedef TYPE_2__ dict ;
struct TYPE_6__ {int size; int used; } ;


 int DICT_HT_INITIAL_SIZE ;
 int DICT_OK ;
 int dictExpand (TYPE_2__*,int) ;
 scalar_t__ dictIsRehashing (TYPE_2__*) ;
 scalar_t__ dict_can_resize ;
 int dict_force_resize_ratio ;

__attribute__((used)) static int _dictExpandIfNeeded(dict *d)
{

    if (dictIsRehashing(d)) return DICT_OK;


    if (d->ht[0].size == 0) return dictExpand(d, DICT_HT_INITIAL_SIZE);





    if (d->ht[0].used >= d->ht[0].size &&
        (dict_can_resize ||
         d->ht[0].used/d->ht[0].size > dict_force_resize_ratio))
    {
        return dictExpand(d, d->ht[0].used*2);
    }
    return DICT_OK;
}
