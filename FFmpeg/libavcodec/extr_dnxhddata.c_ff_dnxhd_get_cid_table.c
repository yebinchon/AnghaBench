
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cid; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* ff_dnxhd_cid_table ;

int ff_dnxhd_get_cid_table(int cid)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(ff_dnxhd_cid_table); i++)
        if (ff_dnxhd_cid_table[i].cid == cid)
            return i;
    return -1;
}
