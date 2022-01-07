
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_20__ {int table; } ;
struct TYPE_19__ {int table; } ;
struct TYPE_18__ {int table; } ;
struct TYPE_14__ {int (* clear_blocks ) (int ) ;} ;
struct TYPE_15__ {int* mb_type; int*** motion_val; } ;
struct TYPE_16__ {int mb_x; int mb_y; int mb_stride; int*** mv; int mb_width; int* block_last_index; int * block; TYPE_1__ bdsp; scalar_t__ mb_intra; TYPE_2__ current_picture; int mv_type; int mv_dir; int gb; int avctx; } ;
struct TYPE_17__ {int mba_diff; int gob_start_code_skipped; int current_mba; int gob_number; int mtype; int current_mv_x; int current_mv_y; TYPE_3__ s; } ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ H261Context ;


 int AV_LOG_ERROR ;
 int FF_ARRAY_ELEMS (int*) ;
 int H261_CBP_VLC_BITS ;
 int H261_MBA_VLC_BITS ;
 int H261_MTYPE_VLC_BITS ;
 scalar_t__ HAS_CBP (size_t) ;
 scalar_t__ IS_16X16 (size_t) ;
 scalar_t__ IS_INTRA4x4 (size_t) ;
 scalar_t__ IS_QUANT (size_t) ;
 int MBA_STARTCODE ;
 int MBA_STUFFING ;
 int MB_TYPE_16x16 ;
 int MB_TYPE_INTRA ;
 int MB_TYPE_L0 ;
 int MV_DIR_FORWARD ;
 int MV_TYPE_16X16 ;
 int SLICE_END ;
 int SLICE_ERROR ;
 int SLICE_OK ;
 int av_assert0 (int) ;
 int av_log (int ,int ,char*,int,...) ;
 void* decode_mv_component (int *,int) ;
 int* ff_h261_mtype_map ;
 int ff_init_block_index (TYPE_3__* const) ;
 int ff_mpv_reconstruct_mb (TYPE_3__* const,int *) ;
 int ff_set_qscale (TYPE_3__* const,int ) ;
 int ff_update_block_index (TYPE_3__* const) ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_9__ h261_cbp_vlc ;
 scalar_t__ h261_decode_block (TYPE_4__*,int ,int,int) ;
 TYPE_6__ h261_mba_vlc ;
 TYPE_5__ h261_mtype_vlc ;
 int stub1 (int ) ;

__attribute__((used)) static int h261_decode_mb(H261Context *h)
{
    MpegEncContext *const s = &h->s;
    int i, cbp, xy;

    cbp = 63;

    do {
        h->mba_diff = get_vlc2(&s->gb, h261_mba_vlc.table,
                               H261_MBA_VLC_BITS, 2);



        if (h->mba_diff == MBA_STARTCODE) {
            h->gob_start_code_skipped = 1;
            return SLICE_END;
        }
    } while (h->mba_diff == MBA_STUFFING);

    if (h->mba_diff < 0) {
        if (get_bits_left(&s->gb) <= 7)
            return SLICE_END;

        av_log(s->avctx, AV_LOG_ERROR, "illegal mba at %d %d\n", s->mb_x, s->mb_y);
        return SLICE_ERROR;
    }

    h->mba_diff += 1;
    h->current_mba += h->mba_diff;

    if (h->current_mba > MBA_STUFFING)
        return SLICE_ERROR;

    s->mb_x = ((h->gob_number - 1) % 2) * 11 + ((h->current_mba - 1) % 11);
    s->mb_y = ((h->gob_number - 1) / 2) * 3 + ((h->current_mba - 1) / 11);
    xy = s->mb_x + s->mb_y * s->mb_stride;
    ff_init_block_index(s);
    ff_update_block_index(s);


    h->mtype = get_vlc2(&s->gb, h261_mtype_vlc.table, H261_MTYPE_VLC_BITS, 2);
    if (h->mtype < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid mtype index %d\n",
               h->mtype);
        return SLICE_ERROR;
    }
    av_assert0(h->mtype < FF_ARRAY_ELEMS(ff_h261_mtype_map));
    h->mtype = ff_h261_mtype_map[h->mtype];


    if (IS_QUANT(h->mtype))
        ff_set_qscale(s, get_bits(&s->gb, 5));

    s->mb_intra = IS_INTRA4x4(h->mtype);


    if (IS_16X16(h->mtype)) {
        if ((h->current_mba == 1) || (h->current_mba == 12) ||
            (h->current_mba == 23) || (h->mba_diff != 1)) {
            h->current_mv_x = 0;
            h->current_mv_y = 0;
        }

        h->current_mv_x = decode_mv_component(&s->gb, h->current_mv_x);
        h->current_mv_y = decode_mv_component(&s->gb, h->current_mv_y);
    } else {
        h->current_mv_x = 0;
        h->current_mv_y = 0;
    }


    if (HAS_CBP(h->mtype))
        cbp = get_vlc2(&s->gb, h261_cbp_vlc.table, H261_CBP_VLC_BITS, 2) + 1;

    if (s->mb_intra) {
        s->current_picture.mb_type[xy] = MB_TYPE_INTRA;
        goto intra;
    }


    s->mv_dir = MV_DIR_FORWARD;
    s->mv_type = MV_TYPE_16X16;
    s->current_picture.mb_type[xy] = MB_TYPE_16x16 | MB_TYPE_L0;
    s->mv[0][0][0] = h->current_mv_x * 2;
    s->mv[0][0][1] = h->current_mv_y * 2;

    if (s->current_picture.motion_val[0]) {
        int b_stride = 2*s->mb_width + 1;
        int b_xy = 2 * s->mb_x + (2 * s->mb_y) * b_stride;
        s->current_picture.motion_val[0][b_xy][0] = s->mv[0][0][0];
        s->current_picture.motion_val[0][b_xy][1] = s->mv[0][0][1];
    }

intra:

    if (s->mb_intra || HAS_CBP(h->mtype)) {
        s->bdsp.clear_blocks(s->block[0]);
        for (i = 0; i < 6; i++) {
            if (h261_decode_block(h, s->block[i], i, cbp & 32) < 0)
                return SLICE_ERROR;
            cbp += cbp;
        }
    } else {
        for (i = 0; i < 6; i++)
            s->block_last_index[i] = -1;
    }

    ff_mpv_reconstruct_mb(s, s->block);

    return SLICE_OK;
}
