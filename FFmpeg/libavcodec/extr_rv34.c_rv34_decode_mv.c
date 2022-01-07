
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int mb_x; int mb_y; int b8_stride; int mb_stride; TYPE_1__* current_picture_ptr; TYPE_3__* next_picture_ptr; TYPE_2__* avctx; int pict_type; int gb; } ;
struct TYPE_17__ {scalar_t__** dmv; int rv30; TYPE_5__ s; } ;
struct TYPE_16__ {int* mb_type; int *** motion_val; int tf; } ;
struct TYPE_15__ {int active_thread_type; } ;
struct TYPE_14__ {int *** motion_val; } ;
typedef TYPE_4__ RV34DecContext ;
typedef TYPE_5__ MpegEncContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_PICTURE_TYPE_P ;
 int FFMAX (int ,int) ;
 int FF_THREAD_FRAME ;
 int HAVE_THREADS ;
 scalar_t__ INVALID_VLC ;
 int IS_16X8 (int) ;
 int IS_8X16 (int) ;
 int IS_8X8 (int) ;
 int IS_INTRA (int) ;
 int IS_SKIP (int) ;
 int ZERO8x2 (int *,int) ;
 int calc_add_mv (TYPE_4__*,int,int ) ;
 int ff_thread_await_progress (int *,int ,int ) ;
 void* get_interleaved_se_golomb (int *) ;
 int memset (scalar_t__**,int ,int) ;
 int* num_mvs ;
 int rv34_mc_1mv (TYPE_4__*,int,int,int,int,int,int,int) ;
 int rv34_mc_2mv (TYPE_4__*,int) ;
 int rv34_mc_2mv_skip (TYPE_4__*) ;
 int rv34_pred_mv (TYPE_4__*,int,int,int) ;
 int rv34_pred_mv_b (TYPE_4__*,int,int) ;
 int rv34_pred_mv_rv3 (TYPE_4__*,int,int) ;

__attribute__((used)) static int rv34_decode_mv(RV34DecContext *r, int block_type)
{
    MpegEncContext *s = &r->s;
    GetBitContext *gb = &s->gb;
    int i, j, k, l;
    int mv_pos = s->mb_x * 2 + s->mb_y * 2 * s->b8_stride;
    int next_bt;

    memset(r->dmv, 0, sizeof(r->dmv));
    for(i = 0; i < num_mvs[block_type]; i++){
        r->dmv[i][0] = get_interleaved_se_golomb(gb);
        r->dmv[i][1] = get_interleaved_se_golomb(gb);
        if (r->dmv[i][0] == INVALID_VLC ||
            r->dmv[i][1] == INVALID_VLC) {
            r->dmv[i][0] = r->dmv[i][1] = 0;
            return AVERROR_INVALIDDATA;
        }
    }
    switch(block_type){
    case 129:
    case 128:
        ZERO8x2(s->current_picture_ptr->motion_val[0][s->mb_x * 2 + s->mb_y * 2 * s->b8_stride], s->b8_stride);
        return 0;
    case 130:
        if(s->pict_type == AV_PICTURE_TYPE_P){
            ZERO8x2(s->current_picture_ptr->motion_val[0][s->mb_x * 2 + s->mb_y * 2 * s->b8_stride], s->b8_stride);
            rv34_mc_1mv (r, block_type, 0, 0, 0, 2, 2, 0);
            break;
        }
    case 137:


        if (HAVE_THREADS && (s->avctx->active_thread_type & FF_THREAD_FRAME))
            ff_thread_await_progress(&s->next_picture_ptr->tf, FFMAX(0, s->mb_y-1), 0);

        next_bt = s->next_picture_ptr->mb_type[s->mb_x + s->mb_y * s->mb_stride];
        if(IS_INTRA(next_bt) || IS_SKIP(next_bt)){
            ZERO8x2(s->current_picture_ptr->motion_val[0][s->mb_x * 2 + s->mb_y * 2 * s->b8_stride], s->b8_stride);
            ZERO8x2(s->current_picture_ptr->motion_val[1][s->mb_x * 2 + s->mb_y * 2 * s->b8_stride], s->b8_stride);
        }else
            for(j = 0; j < 2; j++)
                for(i = 0; i < 2; i++)
                    for(k = 0; k < 2; k++)
                        for(l = 0; l < 2; l++)
                            s->current_picture_ptr->motion_val[l][mv_pos + i + j*s->b8_stride][k] = calc_add_mv(r, l, s->next_picture_ptr->motion_val[0][mv_pos + i + j*s->b8_stride][k]);
        if(!(IS_16X8(next_bt) || IS_8X16(next_bt) || IS_8X8(next_bt)))
            rv34_mc_2mv(r, block_type);
        else
            rv34_mc_2mv_skip(r);
        ZERO8x2(s->current_picture_ptr->motion_val[0][s->mb_x * 2 + s->mb_y * 2 * s->b8_stride], s->b8_stride);
        break;
    case 135:
    case 131:
        rv34_pred_mv(r, block_type, 0, 0);
        rv34_mc_1mv (r, block_type, 0, 0, 0, 2, 2, 0);
        break;
    case 136:
    case 139:
        r->dmv[1][0] = r->dmv[0][0];
        r->dmv[1][1] = r->dmv[0][1];
        if(r->rv30)
            rv34_pred_mv_rv3(r, block_type, block_type == 139);
        else
            rv34_pred_mv_b (r, block_type, block_type == 139);
        rv34_mc_1mv (r, block_type, 0, 0, 0, 2, 2, block_type == 139);
        break;
    case 134:
    case 133:
        rv34_pred_mv(r, block_type, 0, 0);
        rv34_pred_mv(r, block_type, 1 + (block_type == 134), 1);
        if(block_type == 134){
            rv34_mc_1mv(r, block_type, 0, 0, 0, 2, 1, 0);
            rv34_mc_1mv(r, block_type, 0, 8, s->b8_stride, 2, 1, 0);
        }
        if(block_type == 133){
            rv34_mc_1mv(r, block_type, 0, 0, 0, 1, 2, 0);
            rv34_mc_1mv(r, block_type, 8, 0, 1, 1, 2, 0);
        }
        break;
    case 138:
        rv34_pred_mv_b (r, block_type, 0);
        rv34_pred_mv_b (r, block_type, 1);
        rv34_mc_2mv (r, block_type);
        break;
    case 132:
        for(i=0;i< 4;i++){
            rv34_pred_mv(r, block_type, i, i);
            rv34_mc_1mv (r, block_type, (i&1)<<3, (i&2)<<2, (i&1)+(i>>1)*s->b8_stride, 1, 1, 0);
        }
        break;
    }

    return 0;
}
