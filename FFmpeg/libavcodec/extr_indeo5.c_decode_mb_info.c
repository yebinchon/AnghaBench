
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* tab; } ;
struct TYPE_19__ {scalar_t__ frame_type; int frame_flags; int gb; TYPE_2__ mb_vlc; TYPE_4__* planes; } ;
struct TYPE_18__ {int mb_size; int pitch; int blk_size; int is_halfpel; int bufsize; scalar_t__ inherit_mv; int band_num; int plane; scalar_t__ inherit_qdelta; scalar_t__ qdelta_present; } ;
struct TYPE_17__ {int xpos; int ypos; int buf_offs; int type; int q_delta; int mv_x; int mv_y; scalar_t__ cbp; } ;
struct TYPE_16__ {int ypos; int xpos; scalar_t__ num_MBs; int width; int height; TYPE_6__* ref_mbs; TYPE_6__* mbs; } ;
struct TYPE_15__ {TYPE_3__* bands; } ;
struct TYPE_14__ {int mb_size; } ;
struct TYPE_12__ {int table; } ;
typedef TYPE_5__ IVITile ;
typedef TYPE_6__ IVIMbInfo ;
typedef TYPE_7__ IVIBandDesc ;
typedef TYPE_8__ IVI45DecContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ FRAMETYPE_INTRA ;
 int IVI_MBs_PER_TILE (int,int,int) ;
 void* IVI_TOSIGNED (int) ;
 int IVI_VLC_BITS ;
 int align_get_bits (int *) ;
 int av_log (int *,int ,char*,...) ;
 scalar_t__ get_bits (int *,int) ;
 int get_bits1 (int *) ;
 void* get_vlc2 (int *,int ,int ,int) ;
 void* ivi_scale_mv (int,int) ;

__attribute__((used)) static int decode_mb_info(IVI45DecContext *ctx, IVIBandDesc *band,
                          IVITile *tile, AVCodecContext *avctx)
{
    int x, y, mv_x, mv_y, mv_delta, offs, mb_offset,
                mv_scale, blks_per_mb, s;
    IVIMbInfo *mb, *ref_mb;
    int row_offset = band->mb_size * band->pitch;

    mb = tile->mbs;
    ref_mb = tile->ref_mbs;
    offs = tile->ypos * band->pitch + tile->xpos;

    if (!ref_mb &&
        ((band->qdelta_present && band->inherit_qdelta) || band->inherit_mv))
        return AVERROR_INVALIDDATA;

    if (tile->num_MBs != IVI_MBs_PER_TILE(tile->width, tile->height, band->mb_size)) {
        av_log(avctx, AV_LOG_ERROR, "Allocated tile size %d mismatches parameters %d\n",
               tile->num_MBs, IVI_MBs_PER_TILE(tile->width, tile->height, band->mb_size));
        return AVERROR_INVALIDDATA;
    }


    mv_scale = (ctx->planes[0].bands[0].mb_size >> 3) - (band->mb_size >> 3);
    mv_x = mv_y = 0;

    for (y = tile->ypos; y < (tile->ypos + tile->height); y += band->mb_size) {
        mb_offset = offs;

        for (x = tile->xpos; x < (tile->xpos + tile->width); x += band->mb_size) {
            mb->xpos = x;
            mb->ypos = y;
            mb->buf_offs = mb_offset;

            if (get_bits1(&ctx->gb)) {
                if (ctx->frame_type == FRAMETYPE_INTRA) {
                    av_log(avctx, AV_LOG_ERROR, "Empty macroblock in an INTRA picture!\n");
                    return AVERROR_INVALIDDATA;
                }
                mb->type = 1;
                mb->cbp = 0;

                mb->q_delta = 0;
                if (!band->plane && !band->band_num && (ctx->frame_flags & 8)) {
                    mb->q_delta = get_vlc2(&ctx->gb, ctx->mb_vlc.tab->table,
                                           IVI_VLC_BITS, 1);
                    mb->q_delta = IVI_TOSIGNED(mb->q_delta);
                }

                mb->mv_x = mb->mv_y = 0;
                if (band->inherit_mv && ref_mb){

                    if (mv_scale) {
                        mb->mv_x = ivi_scale_mv(ref_mb->mv_x, mv_scale);
                        mb->mv_y = ivi_scale_mv(ref_mb->mv_y, mv_scale);
                    } else {
                        mb->mv_x = ref_mb->mv_x;
                        mb->mv_y = ref_mb->mv_y;
                    }
                }
            } else {
                if (band->inherit_mv && ref_mb) {
                    mb->type = ref_mb->type;
                } else if (ctx->frame_type == FRAMETYPE_INTRA) {
                    mb->type = 0;
                } else {
                    mb->type = get_bits1(&ctx->gb);
                }

                blks_per_mb = band->mb_size != band->blk_size ? 4 : 1;
                mb->cbp = get_bits(&ctx->gb, blks_per_mb);

                mb->q_delta = 0;
                if (band->qdelta_present) {
                    if (band->inherit_qdelta) {
                        if (ref_mb) mb->q_delta = ref_mb->q_delta;
                    } else if (mb->cbp || (!band->plane && !band->band_num &&
                                           (ctx->frame_flags & 8))) {
                        mb->q_delta = get_vlc2(&ctx->gb, ctx->mb_vlc.tab->table,
                                               IVI_VLC_BITS, 1);
                        mb->q_delta = IVI_TOSIGNED(mb->q_delta);
                    }
                }

                if (!mb->type) {
                    mb->mv_x = mb->mv_y = 0;
                } else {
                    if (band->inherit_mv && ref_mb){

                        if (mv_scale) {
                            mb->mv_x = ivi_scale_mv(ref_mb->mv_x, mv_scale);
                            mb->mv_y = ivi_scale_mv(ref_mb->mv_y, mv_scale);
                        } else {
                            mb->mv_x = ref_mb->mv_x;
                            mb->mv_y = ref_mb->mv_y;
                        }
                    } else {

                        mv_delta = get_vlc2(&ctx->gb, ctx->mb_vlc.tab->table,
                                            IVI_VLC_BITS, 1);
                        mv_y += IVI_TOSIGNED(mv_delta);
                        mv_delta = get_vlc2(&ctx->gb, ctx->mb_vlc.tab->table,
                                            IVI_VLC_BITS, 1);
                        mv_x += IVI_TOSIGNED(mv_delta);
                        mb->mv_x = mv_x;
                        mb->mv_y = mv_y;
                    }
                }
            }

            s= band->is_halfpel;
            if (mb->type)
            if ( x + (mb->mv_x >>s) + (y+ (mb->mv_y >>s))*band->pitch < 0 ||
                 x + ((mb->mv_x+s)>>s) + band->mb_size - 1
                   + (y+band->mb_size - 1 +((mb->mv_y+s)>>s))*band->pitch > band->bufsize - 1) {
                av_log(avctx, AV_LOG_ERROR, "motion vector %d %d outside reference\n", x*s + mb->mv_x, y*s + mb->mv_y);
                return AVERROR_INVALIDDATA;
            }

            mb++;
            if (ref_mb)
                ref_mb++;
            mb_offset += band->mb_size;
        }

        offs += row_offset;
    }

    align_get_bits(&ctx->gb);

    return 0;
}
