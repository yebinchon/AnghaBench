
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ vorbis_residue ;
struct TYPE_8__ {int avctx; } ;
typedef TYPE_2__ vorbis_context ;
typedef int uint8_t ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int vorbis_residue_decode_internal (TYPE_2__*,TYPE_1__*,unsigned int,int *,float*,unsigned int,unsigned int,int) ;

__attribute__((used)) static inline int vorbis_residue_decode(vorbis_context *vc, vorbis_residue *vr,
                                        unsigned ch,
                                        uint8_t *do_not_decode,
                                        float *vec, unsigned vlen,
                                        unsigned ch_left)
{
    if (vr->type == 2)
        return vorbis_residue_decode_internal(vc, vr, ch, do_not_decode, vec, vlen, ch_left, 2);
    else if (vr->type == 1)
        return vorbis_residue_decode_internal(vc, vr, ch, do_not_decode, vec, vlen, ch_left, 1);
    else if (vr->type == 0)
        return vorbis_residue_decode_internal(vc, vr, ch, do_not_decode, vec, vlen, ch_left, 0);
    else {
        av_log(vc->avctx, AV_LOG_ERROR, " Invalid residue type while residue decode?! \n");
        return AVERROR_INVALIDDATA;
    }
}
