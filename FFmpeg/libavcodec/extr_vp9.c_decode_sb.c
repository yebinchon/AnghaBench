
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef enum BlockPartition { ____Placeholder_BlockPartition } BlockPartition ;
typedef enum BlockLevel { ____Placeholder_BlockLevel } BlockLevel ;
struct TYPE_14__ {int *** partition; } ;
struct TYPE_21__ {int* left_partition_ctx; TYPE_1__ counts; int c; TYPE_9__* s; } ;
typedef TYPE_8__ VP9TileData ;
typedef int VP9Filter ;
struct TYPE_15__ {scalar_t__ intraonly; scalar_t__ keyframe; } ;
struct TYPE_20__ {TYPE_6__* frames; TYPE_2__ h; } ;
struct TYPE_16__ {int *** partition; } ;
struct TYPE_17__ {TYPE_3__ p; } ;
struct TYPE_22__ {int* above_partition_ctx; int bytesperpixel; int cols; int rows; int ss_v; int ss_h; TYPE_7__ s; TYPE_4__ prob; } ;
typedef TYPE_9__ VP9Context ;
struct TYPE_18__ {TYPE_10__* f; } ;
struct TYPE_19__ {TYPE_5__ tf; } ;
struct TYPE_13__ {int* linesize; } ;
typedef TYPE_10__ AVFrame ;


 int BL_8X8 ;
 size_t CUR_FRAME ;




 int av_assert0 (int ) ;
 int ff_vp9_decode_block (TYPE_8__*,int,int,int *,int,int,int,int) ;
 int *** ff_vp9_default_kf_partition_probs ;
 int ff_vp9_partition_tree ;
 scalar_t__ vp56_rac_get_prob_branchy (int ,int const) ;
 int vp8_rac_get_tree (int ,int ,int const*) ;

__attribute__((used)) static void decode_sb(VP9TileData *td, int row, int col, VP9Filter *lflvl,
                      ptrdiff_t yoff, ptrdiff_t uvoff, enum BlockLevel bl)
{
    const VP9Context *s = td->s;
    int c = ((s->above_partition_ctx[col] >> (3 - bl)) & 1) |
            (((td->left_partition_ctx[row & 0x7] >> (3 - bl)) & 1) << 1);
    const uint8_t *p = s->s.h.keyframe || s->s.h.intraonly ? ff_vp9_default_kf_partition_probs[bl][c] :
                                                     s->prob.p.partition[bl][c];
    enum BlockPartition bp;
    ptrdiff_t hbs = 4 >> bl;
    AVFrame *f = s->s.frames[CUR_FRAME].tf.f;
    ptrdiff_t y_stride = f->linesize[0], uv_stride = f->linesize[1];
    int bytesperpixel = s->bytesperpixel;

    if (bl == BL_8X8) {
        bp = vp8_rac_get_tree(td->c, ff_vp9_partition_tree, p);
        ff_vp9_decode_block(td, row, col, lflvl, yoff, uvoff, bl, bp);
    } else if (col + hbs < s->cols) {
        if (row + hbs < s->rows) {
            bp = vp8_rac_get_tree(td->c, ff_vp9_partition_tree, p);
            switch (bp) {
            case 130:
                ff_vp9_decode_block(td, row, col, lflvl, yoff, uvoff, bl, bp);
                break;
            case 131:
                ff_vp9_decode_block(td, row, col, lflvl, yoff, uvoff, bl, bp);
                yoff += hbs * 8 * y_stride;
                uvoff += hbs * 8 * uv_stride >> s->ss_v;
                ff_vp9_decode_block(td, row + hbs, col, lflvl, yoff, uvoff, bl, bp);
                break;
            case 128:
                ff_vp9_decode_block(td, row, col, lflvl, yoff, uvoff, bl, bp);
                yoff += hbs * 8 * bytesperpixel;
                uvoff += hbs * 8 * bytesperpixel >> s->ss_h;
                ff_vp9_decode_block(td, row, col + hbs, lflvl, yoff, uvoff, bl, bp);
                break;
            case 129:
                decode_sb(td, row, col, lflvl, yoff, uvoff, bl + 1);
                decode_sb(td, row, col + hbs, lflvl,
                          yoff + 8 * hbs * bytesperpixel,
                          uvoff + (8 * hbs * bytesperpixel >> s->ss_h), bl + 1);
                yoff += hbs * 8 * y_stride;
                uvoff += hbs * 8 * uv_stride >> s->ss_v;
                decode_sb(td, row + hbs, col, lflvl, yoff, uvoff, bl + 1);
                decode_sb(td, row + hbs, col + hbs, lflvl,
                          yoff + 8 * hbs * bytesperpixel,
                          uvoff + (8 * hbs * bytesperpixel >> s->ss_h), bl + 1);
                break;
            default:
                av_assert0(0);
            }
        } else if (vp56_rac_get_prob_branchy(td->c, p[1])) {
            bp = 129;
            decode_sb(td, row, col, lflvl, yoff, uvoff, bl + 1);
            decode_sb(td, row, col + hbs, lflvl,
                      yoff + 8 * hbs * bytesperpixel,
                      uvoff + (8 * hbs * bytesperpixel >> s->ss_h), bl + 1);
        } else {
            bp = 131;
            ff_vp9_decode_block(td, row, col, lflvl, yoff, uvoff, bl, bp);
        }
    } else if (row + hbs < s->rows) {
        if (vp56_rac_get_prob_branchy(td->c, p[2])) {
            bp = 129;
            decode_sb(td, row, col, lflvl, yoff, uvoff, bl + 1);
            yoff += hbs * 8 * y_stride;
            uvoff += hbs * 8 * uv_stride >> s->ss_v;
            decode_sb(td, row + hbs, col, lflvl, yoff, uvoff, bl + 1);
        } else {
            bp = 128;
            ff_vp9_decode_block(td, row, col, lflvl, yoff, uvoff, bl, bp);
        }
    } else {
        bp = 129;
        decode_sb(td, row, col, lflvl, yoff, uvoff, bl + 1);
    }
    td->counts.partition[bl][c][bp]++;
}
