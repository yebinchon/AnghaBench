
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int state; scalar_t__ last_index; scalar_t__ index; scalar_t__ overread_index; scalar_t__ overread; scalar_t__ frame_start_found; } ;
struct TYPE_6__ {scalar_t__ pp_time; scalar_t__ bitstream_buffer_size; TYPE_1__ parse_context; scalar_t__ closed_gop; scalar_t__ mb_y; scalar_t__ mb_x; int next_picture; int avctx; int last_picture; int current_picture; int * next_picture_ptr; int last_picture_ptr; int current_picture_ptr; int * picture; } ;
typedef TYPE_2__ MpegEncContext ;
typedef TYPE_3__ AVCodecContext ;


 int MAX_PICTURE_COUNT ;
 int ff_mpeg_unref_picture (int ,int *) ;

void ff_mpeg_flush(AVCodecContext *avctx){
    int i;
    MpegEncContext *s = avctx->priv_data;

    if (!s || !s->picture)
        return;

    for (i = 0; i < MAX_PICTURE_COUNT; i++)
        ff_mpeg_unref_picture(s->avctx, &s->picture[i]);
    s->current_picture_ptr = s->last_picture_ptr = s->next_picture_ptr = ((void*)0);

    ff_mpeg_unref_picture(s->avctx, &s->current_picture);
    ff_mpeg_unref_picture(s->avctx, &s->last_picture);
    ff_mpeg_unref_picture(s->avctx, &s->next_picture);

    s->mb_x= s->mb_y= 0;
    s->closed_gop= 0;

    s->parse_context.state= -1;
    s->parse_context.frame_start_found= 0;
    s->parse_context.overread= 0;
    s->parse_context.overread_index= 0;
    s->parse_context.index= 0;
    s->parse_context.last_index= 0;
    s->bitstream_buffer_size=0;
    s->pp_time=0;
}
