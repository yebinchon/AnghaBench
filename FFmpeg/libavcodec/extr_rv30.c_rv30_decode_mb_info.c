
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pict_type; int avctx; int gb; } ;
struct TYPE_4__ {TYPE_2__ s; } ;
typedef TYPE_1__ RV34DecContext ;
typedef TYPE_2__ MpegEncContext ;
typedef int GetBitContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_B ;
 int av_log (int ,int ,char*) ;
 unsigned int get_interleaved_ue_golomb (int *) ;

__attribute__((used)) static int rv30_decode_mb_info(RV34DecContext *r)
{
    static const int rv30_p_types[6] = { 130, 132, 131, -1, 129, 128 };
    static const int rv30_b_types[6] = { 130, 134, 133, 135, 129, 128 };
    MpegEncContext *s = &r->s;
    GetBitContext *gb = &s->gb;
    unsigned code = get_interleaved_ue_golomb(gb);

    if (code > 11) {
        av_log(s->avctx, AV_LOG_ERROR, "Incorrect MB type code\n");
        return -1;
    }
    if(code > 5){
        av_log(s->avctx, AV_LOG_ERROR, "dquant needed\n");
        code -= 6;
    }
    if(s->pict_type != AV_PICTURE_TYPE_B)
        return rv30_p_types[code];
    else
        return rv30_b_types[code];
}
