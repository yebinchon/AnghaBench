
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int avctx; } ;
struct TYPE_6__ {int bfraction_lut_index; int bfraction; TYPE_1__ s; } ;
typedef TYPE_2__ VC1Context ;
struct TYPE_7__ {int table; } ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int VC1_BFRACTION_VLC_BITS ;
 int av_log (int ,int ,char*) ;
 int * ff_vc1_bfraction_lut ;
 TYPE_4__ ff_vc1_bfraction_vlc ;
 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static int read_bfraction(VC1Context *v, GetBitContext* gb) {
    int bfraction_lut_index = get_vlc2(gb, ff_vc1_bfraction_vlc.table, VC1_BFRACTION_VLC_BITS, 1);

    if (bfraction_lut_index == 21 || bfraction_lut_index < 0) {
        av_log(v->s.avctx, AV_LOG_ERROR, "bfraction invalid\n");
        return AVERROR_INVALIDDATA;
    }
    v->bfraction_lut_index = bfraction_lut_index;
    v->bfraction = ff_vc1_bfraction_lut[v->bfraction_lut_index];
    return 0;
}
