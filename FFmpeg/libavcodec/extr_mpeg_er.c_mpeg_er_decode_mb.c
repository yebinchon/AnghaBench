
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* f; } ;
struct TYPE_8__ {int (* clear_blocks ) (int ) ;} ;
struct TYPE_11__ {int mv_dir; int mv_type; int mb_intra; int mb_skipped; int mb_x; int mb_y; int chroma_y_shift; int linesize; int uvlinesize; int chroma_x_shift; int * block; int avctx; TYPE_3__ current_picture; scalar_t__* dest; TYPE_1__ bdsp; int mv; scalar_t__ mcsel; } ;
struct TYPE_9__ {scalar_t__* data; } ;
typedef TYPE_4__ MpegEncContext ;


 int AV_LOG_DEBUG ;
 int av_log (int ,int ,char*) ;
 int ff_init_block_index (TYPE_4__*) ;
 int ff_mpv_reconstruct_mb (TYPE_4__*,int *) ;
 int ff_update_block_index (TYPE_4__*) ;
 int memcpy (int ,int****,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void mpeg_er_decode_mb(void *opaque, int ref, int mv_dir, int mv_type,
                              int (*mv)[2][4][2], int mb_x, int mb_y,
                              int mb_intra, int mb_skipped)
{
    MpegEncContext *s = opaque;

    s->mv_dir = mv_dir;
    s->mv_type = mv_type;
    s->mb_intra = mb_intra;
    s->mb_skipped = mb_skipped;
    s->mb_x = mb_x;
    s->mb_y = mb_y;
    s->mcsel = 0;
    memcpy(s->mv, mv, sizeof(*mv));

    ff_init_block_index(s);
    ff_update_block_index(s);

    s->bdsp.clear_blocks(s->block[0]);
    if (!s->chroma_y_shift)
        s->bdsp.clear_blocks(s->block[6]);

    s->dest[0] = s->current_picture.f->data[0] +
                 s->mb_y * 16 * s->linesize +
                 s->mb_x * 16;
    s->dest[1] = s->current_picture.f->data[1] +
                 s->mb_y * (16 >> s->chroma_y_shift) * s->uvlinesize +
                 s->mb_x * (16 >> s->chroma_x_shift);
    s->dest[2] = s->current_picture.f->data[2] +
                 s->mb_y * (16 >> s->chroma_y_shift) * s->uvlinesize +
                 s->mb_x * (16 >> s->chroma_x_shift);

    if (ref)
        av_log(s->avctx, AV_LOG_DEBUG,
               "Interlaced error concealment is not fully implemented\n");
    ff_mpv_reconstruct_mb(s, s->block);
}
