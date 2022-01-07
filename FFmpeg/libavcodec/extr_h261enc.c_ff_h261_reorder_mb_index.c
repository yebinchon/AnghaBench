
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mb_x; int mb_y; int mb_width; int height; int width; scalar_t__*** last_mv; } ;
typedef TYPE_1__ MpegEncContext ;


 int ff_h261_get_picture_format (int ,int ) ;
 int ff_init_block_index (TYPE_1__*) ;
 int ff_update_block_index (TYPE_1__*) ;
 int h261_encode_gob_header (TYPE_1__*,int ) ;

void ff_h261_reorder_mb_index(MpegEncContext *s)
{
    int index = s->mb_x + s->mb_y * s->mb_width;

    if (index % 11 == 0) {
        if (index % 33 == 0)
            h261_encode_gob_header(s, 0);
        s->last_mv[0][0][0] = 0;
        s->last_mv[0][0][1] = 0;
    }



    if (ff_h261_get_picture_format(s->width, s->height) == 1) {
        s->mb_x = index % 11;
        index /= 11;
        s->mb_y = index % 3;
        index /= 3;
        s->mb_x += 11 * (index % 2);
        index /= 2;
        s->mb_y += 3 * index;

        ff_init_block_index(s);
        ff_update_block_index(s);
    }
}
