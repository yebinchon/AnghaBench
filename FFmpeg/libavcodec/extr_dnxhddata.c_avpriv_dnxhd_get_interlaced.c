
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int DNXHD_INTERLACED ;
 TYPE_1__* ff_dnxhd_cid_table ;
 int ff_dnxhd_get_cid_table (int) ;

int avpriv_dnxhd_get_interlaced(int cid)
{
    int i = ff_dnxhd_get_cid_table(cid);
    if (i < 0)
        return i;
    return ff_dnxhd_cid_table[i].flags & DNXHD_INTERLACED ? 1 : 0;
}
