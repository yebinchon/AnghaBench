
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ht; } ;
typedef TYPE_2__ dict ;
struct TYPE_6__ {int used; } ;


 int DICT_ERR ;
 int DICT_HT_INITIAL_SIZE ;
 int dictExpand (TYPE_2__*,int) ;
 scalar_t__ dictIsRehashing (TYPE_2__*) ;
 int dict_can_resize ;

int dictResize(dict *d)
{
    int minimal;

    if (!dict_can_resize || dictIsRehashing(d)) return DICT_ERR;
    minimal = d->ht[0].used;
    if (minimal < DICT_HT_INITIAL_SIZE)
        minimal = DICT_HT_INITIAL_SIZE;
    return dictExpand(d, minimal);
}
