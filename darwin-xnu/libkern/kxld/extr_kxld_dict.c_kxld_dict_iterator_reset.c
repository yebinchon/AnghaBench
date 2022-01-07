
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ idx; } ;
typedef TYPE_1__ KXLDDictIterator ;



void
kxld_dict_iterator_reset(KXLDDictIterator *iter)
{
    iter->idx = 0;
}
