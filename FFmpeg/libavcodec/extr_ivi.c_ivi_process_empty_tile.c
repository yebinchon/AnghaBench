
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ivi_mc_func ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_9__ {int mb_size; int is_halfpel; int pitch; scalar_t__ aheight; int blk_size; int * buf; int * ref_buf; scalar_t__ inherit_mv; scalar_t__ inherit_qdelta; int glob_quant; int band_num; int plane; int qdelta_present; } ;
struct TYPE_8__ {int xpos; int ypos; int buf_offs; int type; int mv_x; int mv_y; int q_delta; scalar_t__ cbp; } ;
struct TYPE_7__ {int xpos; int width; int num_MBs; int height; int ypos; TYPE_2__* mbs; TYPE_2__* ref_mbs; } ;
typedef TYPE_1__ IVITile ;
typedef TYPE_2__ IVIMbInfo ;
typedef TYPE_3__ IVIBandDesc ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int IVI_MBs_PER_TILE (int,int,int) ;
 int av_log (int *,int ,char*,...) ;
 int ff_ivi_mc_4x4_no_delta ;
 int ff_ivi_mc_8x8_no_delta ;
 int ivi_mc (TYPE_3__ const*,int ,int ,int,int,int,int ,int ,int,int) ;
 void* ivi_scale_mv (int,int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int ivi_process_empty_tile(AVCodecContext *avctx, const IVIBandDesc *band,
                                  IVITile *tile, int32_t mv_scale)
{
    int x, y, need_mc, mbn, blk, num_blocks, mv_x, mv_y, mc_type;
    int offs, mb_offset, row_offset, ret;
    IVIMbInfo *mb, *ref_mb;
    const int16_t *src;
    int16_t *dst;
    ivi_mc_func mc_no_delta_func;
    int clear_first = !band->qdelta_present && !band->plane && !band->band_num;
    int mb_size = band->mb_size;
    int xend = tile->xpos + tile->width;
    int is_halfpel = band->is_halfpel;
    int pitch = band->pitch;

    if (tile->num_MBs != IVI_MBs_PER_TILE(tile->width, tile->height, mb_size)) {
        av_log(avctx, AV_LOG_ERROR, "Allocated tile size %d mismatches "
               "parameters %d in ivi_process_empty_tile()\n",
               tile->num_MBs, IVI_MBs_PER_TILE(tile->width, tile->height, mb_size));
        return AVERROR_INVALIDDATA;
    }

    offs = tile->ypos * pitch + tile->xpos;
    mb = tile->mbs;
    ref_mb = tile->ref_mbs;
    row_offset = mb_size * pitch;
    need_mc = 0;

    for (y = tile->ypos; y < (tile->ypos + tile->height); y += mb_size) {
        mb_offset = offs;

        for (x = tile->xpos; x < xend; x += mb_size) {
            mb->xpos = x;
            mb->ypos = y;
            mb->buf_offs = mb_offset;

            mb->type = 1;
            mb->cbp = 0;

            if (clear_first) {
                mb->q_delta = band->glob_quant;
                mb->mv_x = 0;
                mb->mv_y = 0;
            }

            if (ref_mb) {
                if (band->inherit_qdelta)
                    mb->q_delta = ref_mb->q_delta;

                if (band->inherit_mv) {

                    if (mv_scale) {
                        mb->mv_x = ivi_scale_mv(ref_mb->mv_x, mv_scale);
                        mb->mv_y = ivi_scale_mv(ref_mb->mv_y, mv_scale);
                    } else {
                        mb->mv_x = ref_mb->mv_x;
                        mb->mv_y = ref_mb->mv_y;
                    }
                    need_mc |= mb->mv_x || mb->mv_y;
                    {
                        int dmv_x, dmv_y, cx, cy;

                        dmv_x = mb->mv_x >> is_halfpel;
                        dmv_y = mb->mv_y >> is_halfpel;
                        cx = mb->mv_x & is_halfpel;
                        cy = mb->mv_y & is_halfpel;

                        if ( mb->xpos + dmv_x < 0
                            || mb->xpos + dmv_x + mb_size + cx > pitch
                            || mb->ypos + dmv_y < 0
                            || mb->ypos + dmv_y + mb_size + cy > band->aheight) {
                            av_log(avctx, AV_LOG_ERROR, "MV out of bounds\n");
                            return AVERROR_INVALIDDATA;
                        }
                    }
                }
                ref_mb++;
            }

            mb++;
            mb_offset += mb_size;
        }
        offs += row_offset;
    }

    if (band->inherit_mv && need_mc) {
        num_blocks = (mb_size != band->blk_size) ? 4 : 1;
        mc_no_delta_func = (band->blk_size == 8) ? ff_ivi_mc_8x8_no_delta
                                                 : ff_ivi_mc_4x4_no_delta;

        for (mbn = 0, mb = tile->mbs; mbn < tile->num_MBs; mb++, mbn++) {
            mv_x = mb->mv_x;
            mv_y = mb->mv_y;
            if (!band->is_halfpel) {
                mc_type = 0;
            } else {
                mc_type = ((mv_y & 1) << 1) | (mv_x & 1);
                mv_x >>= 1;
                mv_y >>= 1;
            }

            for (blk = 0; blk < num_blocks; blk++) {

                offs = mb->buf_offs + band->blk_size * ((blk & 1) + !!(blk & 2) * pitch);
                ret = ivi_mc(band, mc_no_delta_func, 0, offs,
                             mv_x, mv_y, 0, 0, mc_type, -1);
                if (ret < 0)
                    return ret;
            }
        }
    } else {

        src = band->ref_buf + tile->ypos * pitch + tile->xpos;
        dst = band->buf + tile->ypos * pitch + tile->xpos;
        for (y = 0; y < tile->height; y++) {
            memcpy(dst, src, tile->width*sizeof(band->buf[0]));
            src += pitch;
            dst += pitch;
        }
    }

    return 0;
}
