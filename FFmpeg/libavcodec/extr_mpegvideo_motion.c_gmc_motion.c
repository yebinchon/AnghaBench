
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int (* gmc ) (int *,int *,int,int,int,int,int,int,int,int,int const,scalar_t__,int,int) ;} ;
struct TYPE_7__ {int sprite_warping_accuracy; int linesize; int uvlinesize; int** sprite_offset; int** sprite_delta; int mb_x; int mb_y; int h_edge_pos; int v_edge_pos; scalar_t__ no_rounding; TYPE_1__ mdsp; TYPE_2__* avctx; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_3__ MpegEncContext ;


 int AV_CODEC_FLAG_GRAY ;
 scalar_t__ CONFIG_GRAY ;
 int stub1 (int *,int *,int,int,int,int,int,int,int,int,int const,scalar_t__,int,int) ;
 int stub2 (int *,int *,int,int,int,int,int,int,int,int,int const,scalar_t__,int,int) ;
 int stub3 (int *,int *,int,int,int,int,int,int,int,int,int const,scalar_t__,int,int) ;
 int stub4 (int *,int *,int,int,int,int,int,int,int,int,int const,scalar_t__,int,int) ;

__attribute__((used)) static void gmc_motion(MpegEncContext *s,
                       uint8_t *dest_y, uint8_t *dest_cb, uint8_t *dest_cr,
                       uint8_t **ref_picture)
{
    uint8_t *ptr;
    int linesize, uvlinesize;
    const int a = s->sprite_warping_accuracy;
    int ox, oy;

    linesize = s->linesize;
    uvlinesize = s->uvlinesize;

    ptr = ref_picture[0];

    ox = s->sprite_offset[0][0] + s->sprite_delta[0][0] * s->mb_x * 16 +
         s->sprite_delta[0][1] * s->mb_y * 16;
    oy = s->sprite_offset[0][1] + s->sprite_delta[1][0] * s->mb_x * 16 +
         s->sprite_delta[1][1] * s->mb_y * 16;

    s->mdsp.gmc(dest_y, ptr, linesize, 16,
                ox, oy,
                s->sprite_delta[0][0], s->sprite_delta[0][1],
                s->sprite_delta[1][0], s->sprite_delta[1][1],
                a + 1, (1 << (2 * a + 1)) - s->no_rounding,
                s->h_edge_pos, s->v_edge_pos);
    s->mdsp.gmc(dest_y + 8, ptr, linesize, 16,
                ox + s->sprite_delta[0][0] * 8,
                oy + s->sprite_delta[1][0] * 8,
                s->sprite_delta[0][0], s->sprite_delta[0][1],
                s->sprite_delta[1][0], s->sprite_delta[1][1],
                a + 1, (1 << (2 * a + 1)) - s->no_rounding,
                s->h_edge_pos, s->v_edge_pos);

    if (CONFIG_GRAY && s->avctx->flags & AV_CODEC_FLAG_GRAY)
        return;

    ox = s->sprite_offset[1][0] + s->sprite_delta[0][0] * s->mb_x * 8 +
         s->sprite_delta[0][1] * s->mb_y * 8;
    oy = s->sprite_offset[1][1] + s->sprite_delta[1][0] * s->mb_x * 8 +
         s->sprite_delta[1][1] * s->mb_y * 8;

    ptr = ref_picture[1];
    s->mdsp.gmc(dest_cb, ptr, uvlinesize, 8,
                ox, oy,
                s->sprite_delta[0][0], s->sprite_delta[0][1],
                s->sprite_delta[1][0], s->sprite_delta[1][1],
                a + 1, (1 << (2 * a + 1)) - s->no_rounding,
                (s->h_edge_pos + 1) >> 1, (s->v_edge_pos + 1) >> 1);

    ptr = ref_picture[2];
    s->mdsp.gmc(dest_cr, ptr, uvlinesize, 8,
                ox, oy,
                s->sprite_delta[0][0], s->sprite_delta[0][1],
                s->sprite_delta[1][0], s->sprite_delta[1][1],
                a + 1, (1 << (2 * a + 1)) - s->no_rounding,
                (s->h_edge_pos + 1) >> 1, (s->v_edge_pos + 1) >> 1);
}
