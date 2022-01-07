
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int intra_types ;
typedef int int8_t ;
struct TYPE_10__ {int mb_x; int mb_y; int mb_stride; TYPE_1__* current_picture_ptr; int avctx; int gb; } ;
struct TYPE_8__ {int vlc_set; int quant; } ;
struct TYPE_9__ {int luma_vlc; scalar_t__ (* decode_intra_types ) (TYPE_3__*,int *,int *) ;int is16; int cur_vlcs; TYPE_2__ si; scalar_t__ chroma_vlc; int block_type; int rv30; int intra_types_stride; TYPE_4__ s; } ;
struct TYPE_7__ {int * mb_type; } ;
typedef TYPE_3__ RV34DecContext ;
typedef TYPE_4__ MpegEncContext ;
typedef int GetBitContext ;


 int AV_LOG_ERROR ;
 int MB_TYPE_INTRA ;
 int MB_TYPE_INTRA16x16 ;
 int RV34_MB_TYPE_INTRA ;
 int RV34_MB_TYPE_INTRA16x16 ;
 int av_log (int ,int ,char*) ;
 int choose_vlc_set (int ,int ,int ) ;
 int fill_rectangle (int *,int,int,int ,int,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int rv34_decode_cbp (int *,int ,int ) ;
 scalar_t__ stub1 (TYPE_3__*,int *,int *) ;

__attribute__((used)) static int rv34_decode_intra_mb_header(RV34DecContext *r, int8_t *intra_types)
{
    MpegEncContext *s = &r->s;
    GetBitContext *gb = &s->gb;
    int mb_pos = s->mb_x + s->mb_y * s->mb_stride;
    int t;

    r->is16 = get_bits1(gb);
    if(r->is16){
        s->current_picture_ptr->mb_type[mb_pos] = MB_TYPE_INTRA16x16;
        r->block_type = RV34_MB_TYPE_INTRA16x16;
        t = get_bits(gb, 2);
        fill_rectangle(intra_types, 4, 4, r->intra_types_stride, t, sizeof(intra_types[0]));
        r->luma_vlc = 2;
    }else{
        if(!r->rv30){
            if(!get_bits1(gb))
                av_log(s->avctx, AV_LOG_ERROR, "Need DQUANT\n");
        }
        s->current_picture_ptr->mb_type[mb_pos] = MB_TYPE_INTRA;
        r->block_type = RV34_MB_TYPE_INTRA;
        if(r->decode_intra_types(r, gb, intra_types) < 0)
            return -1;
        r->luma_vlc = 1;
    }

    r->chroma_vlc = 0;
    r->cur_vlcs = choose_vlc_set(r->si.quant, r->si.vlc_set, 0);

    return rv34_decode_cbp(gb, r->cur_vlcs, r->is16);
}
