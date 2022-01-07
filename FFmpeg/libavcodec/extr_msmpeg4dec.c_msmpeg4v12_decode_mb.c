
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint32_t ;
typedef int int16_t ;
struct TYPE_20__ {int table; } ;
struct TYPE_19__ {int table; } ;
struct TYPE_16__ {int (* clear_blocks ) (int ) ;} ;
struct TYPE_17__ {int* mb_type; } ;
struct TYPE_18__ {int mb_x; int mb_y; int mb_stride; scalar_t__ pict_type; int mb_intra; int* block_last_index; int*** mv; int mb_skipped; int msmpeg4_version; int avctx; int * block; TYPE_1__ bdsp; int gb; scalar_t__ ac_pred; void* mv_type; void* mv_dir; scalar_t__ use_skip_mb_code; TYPE_2__ current_picture; } ;
struct TYPE_15__ {int table; } ;
struct TYPE_14__ {int table; } ;
struct TYPE_13__ {int table; } ;
typedef TYPE_3__ MpegEncContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_P ;
 int CBPY_VLC_BITS ;
 int INTER_MCBPC_VLC_BITS ;
 int INTRA_MCBPC_VLC_BITS ;
 int MB_TYPE_16x16 ;
 int MB_TYPE_INTRA ;
 int MB_TYPE_L0 ;
 int MB_TYPE_SKIP ;
 void* MV_DIR_FORWARD ;
 void* MV_TYPE_16X16 ;
 int V2_INTRA_CBPC_VLC_BITS ;
 int V2_MB_TYPE_VLC_BITS ;
 int av_log (int ,int ,char*,...) ;
 TYPE_12__ ff_h263_cbpy_vlc ;
 TYPE_11__ ff_h263_inter_MCBPC_vlc ;
 TYPE_10__ ff_h263_intra_MCBPC_vlc ;
 int ff_h263_pred_motion (TYPE_3__*,int ,int ,int*,int*) ;
 scalar_t__ ff_msmpeg4_decode_block (TYPE_3__*,int *,int,int,int *) ;
 scalar_t__ get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int msmpeg4v2_decode_motion (TYPE_3__*,int,int) ;
 int stub1 (int ) ;
 TYPE_5__ v2_intra_cbpc_vlc ;
 TYPE_4__ v2_mb_type_vlc ;

__attribute__((used)) static int msmpeg4v12_decode_mb(MpegEncContext *s, int16_t block[6][64])
{
    int cbp, code, i;
    uint32_t * const mb_type_ptr = &s->current_picture.mb_type[s->mb_x + s->mb_y*s->mb_stride];

    if (s->pict_type == AV_PICTURE_TYPE_P) {
        if (s->use_skip_mb_code) {
            if (get_bits1(&s->gb)) {

                s->mb_intra = 0;
                for(i=0;i<6;i++)
                    s->block_last_index[i] = -1;
                s->mv_dir = MV_DIR_FORWARD;
                s->mv_type = MV_TYPE_16X16;
                s->mv[0][0][0] = 0;
                s->mv[0][0][1] = 0;
                s->mb_skipped = 1;
                *mb_type_ptr = MB_TYPE_SKIP | MB_TYPE_L0 | MB_TYPE_16x16;
                return 0;
            }
        }

        if(s->msmpeg4_version==2)
            code = get_vlc2(&s->gb, v2_mb_type_vlc.table, V2_MB_TYPE_VLC_BITS, 1);
        else
            code = get_vlc2(&s->gb, ff_h263_inter_MCBPC_vlc.table, INTER_MCBPC_VLC_BITS, 2);
        if(code<0 || code>7){
            av_log(s->avctx, AV_LOG_ERROR, "cbpc %d invalid at %d %d\n", code, s->mb_x, s->mb_y);
            return -1;
        }

        s->mb_intra = code >>2;

        cbp = code & 0x3;
    } else {
        s->mb_intra = 1;
        if(s->msmpeg4_version==2)
            cbp= get_vlc2(&s->gb, v2_intra_cbpc_vlc.table, V2_INTRA_CBPC_VLC_BITS, 1);
        else
            cbp= get_vlc2(&s->gb, ff_h263_intra_MCBPC_vlc.table, INTRA_MCBPC_VLC_BITS, 2);
        if(cbp<0 || cbp>3){
            av_log(s->avctx, AV_LOG_ERROR, "cbpc %d invalid at %d %d\n", cbp, s->mb_x, s->mb_y);
            return -1;
        }
    }

    if (!s->mb_intra) {
        int mx, my, cbpy;

        cbpy= get_vlc2(&s->gb, ff_h263_cbpy_vlc.table, CBPY_VLC_BITS, 1);
        if(cbpy<0){
            av_log(s->avctx, AV_LOG_ERROR, "cbpy %d invalid at %d %d\n", cbp, s->mb_x, s->mb_y);
            return -1;
        }

        cbp|= cbpy<<2;
        if(s->msmpeg4_version==1 || (cbp&3) != 3) cbp^= 0x3C;

        ff_h263_pred_motion(s, 0, 0, &mx, &my);
        mx= msmpeg4v2_decode_motion(s, mx, 1);
        my= msmpeg4v2_decode_motion(s, my, 1);

        s->mv_dir = MV_DIR_FORWARD;
        s->mv_type = MV_TYPE_16X16;
        s->mv[0][0][0] = mx;
        s->mv[0][0][1] = my;
        *mb_type_ptr = MB_TYPE_L0 | MB_TYPE_16x16;
    } else {
        int v;
        if(s->msmpeg4_version==2){
            s->ac_pred = get_bits1(&s->gb);
            v = get_vlc2(&s->gb, ff_h263_cbpy_vlc.table, CBPY_VLC_BITS, 1);
            if (v < 0) {
                av_log(s->avctx, AV_LOG_ERROR, "cbpy vlc invalid\n");
                return -1;
            }
            cbp|= v<<2;
        } else{
            s->ac_pred = 0;
            v = get_vlc2(&s->gb, ff_h263_cbpy_vlc.table, CBPY_VLC_BITS, 1);
            if (v < 0) {
                av_log(s->avctx, AV_LOG_ERROR, "cbpy vlc invalid\n");
                return -1;
            }
            cbp|= v<<2;
            if(s->pict_type==AV_PICTURE_TYPE_P) cbp^=0x3C;
        }
        *mb_type_ptr = MB_TYPE_INTRA;
    }

    s->bdsp.clear_blocks(s->block[0]);
    for (i = 0; i < 6; i++) {
        if (ff_msmpeg4_decode_block(s, block[i], i, (cbp >> (5 - i)) & 1, ((void*)0)) < 0)
        {
             av_log(s->avctx, AV_LOG_ERROR, "\nerror while decoding block: %d x %d (%d)\n", s->mb_x, s->mb_y, i);
             return -1;
        }
    }
    return 0;
}
