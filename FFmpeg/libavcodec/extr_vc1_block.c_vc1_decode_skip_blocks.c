
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* f; } ;
struct TYPE_12__ {scalar_t__ start_mb_y; scalar_t__ end_mb_y; int first_slice_line; scalar_t__ mb_y; int linesize; int uvlinesize; int pict_type; TYPE_2__ last_picture; int * dest; scalar_t__ mb_x; scalar_t__ mb_width; int er; } ;
struct TYPE_11__ {TYPE_4__ s; } ;
typedef TYPE_3__ VC1Context ;
struct TYPE_9__ {scalar_t__* data; } ;
typedef TYPE_4__ MpegEncContext ;


 int AV_PICTURE_TYPE_P ;
 int ER_MB_END ;
 int ff_er_add_slice (int *,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int ff_mpeg_draw_horiz_band (TYPE_4__*,int,int) ;
 int ff_update_block_index (TYPE_4__*) ;
 int init_block_index (TYPE_3__*) ;
 int memcpy (int ,scalar_t__,int) ;

__attribute__((used)) static void vc1_decode_skip_blocks(VC1Context *v)
{
    MpegEncContext *s = &v->s;

    if (!v->s.last_picture.f->data[0])
        return;

    ff_er_add_slice(&s->er, 0, s->start_mb_y, s->mb_width - 1, s->end_mb_y - 1, ER_MB_END);
    s->first_slice_line = 1;
    for (s->mb_y = s->start_mb_y; s->mb_y < s->end_mb_y; s->mb_y++) {
        s->mb_x = 0;
        init_block_index(v);
        ff_update_block_index(s);
        memcpy(s->dest[0], s->last_picture.f->data[0] + s->mb_y * 16 * s->linesize, s->linesize * 16);
        memcpy(s->dest[1], s->last_picture.f->data[1] + s->mb_y * 8 * s->uvlinesize, s->uvlinesize * 8);
        memcpy(s->dest[2], s->last_picture.f->data[2] + s->mb_y * 8 * s->uvlinesize, s->uvlinesize * 8);
        ff_mpeg_draw_horiz_band(s, s->mb_y * 16, 16);
        s->first_slice_line = 0;
    }
    s->pict_type = AV_PICTURE_TYPE_P;
}
