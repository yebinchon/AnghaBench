
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int den; scalar_t__ num; } ;
struct TYPE_4__ {TYPE_1__ packet_scale; } ;


 int FFMAX (int,int) ;
 TYPE_2__* ff_dnxhd_cid_table ;
 int ff_dnxhd_get_cid_table (int) ;

int avpriv_dnxhd_get_hr_frame_size(int cid, int w, int h)
{
    int result, i = ff_dnxhd_get_cid_table(cid);

    if (i < 0)
        return i;

    result = ((h + 15) / 16) * ((w + 15) / 16) * (int64_t)ff_dnxhd_cid_table[i].packet_scale.num / ff_dnxhd_cid_table[i].packet_scale.den;
    result = (result + 2048) / 4096 * 4096;

    return FFMAX(result, 8192);
}
