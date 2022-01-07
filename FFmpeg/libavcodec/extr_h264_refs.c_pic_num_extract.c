
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int picture_structure; } ;
typedef TYPE_1__ H264Context ;


 scalar_t__ FIELD_PICTURE (TYPE_1__ const*) ;
 int PICT_FRAME ;

__attribute__((used)) static int pic_num_extract(const H264Context *h, int pic_num, int *structure)
{
    *structure = h->picture_structure;
    if (FIELD_PICTURE(h)) {
        if (!(pic_num & 1))

            *structure ^= PICT_FRAME;
        pic_num >>= 1;
    }

    return pic_num;
}
