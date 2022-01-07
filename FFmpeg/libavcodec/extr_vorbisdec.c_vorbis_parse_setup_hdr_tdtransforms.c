
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avctx; int gb; } ;
typedef TYPE_1__ vorbis_context ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int ff_dlog (int *,char*,unsigned int,unsigned int) ;
 int get_bits (int *,int) ;

__attribute__((used)) static int vorbis_parse_setup_hdr_tdtransforms(vorbis_context *vc)
{
    GetBitContext *gb = &vc->gb;
    unsigned i, vorbis_time_count = get_bits(gb, 6) + 1;

    for (i = 0; i < vorbis_time_count; ++i) {
        unsigned vorbis_tdtransform = get_bits(gb, 16);

        ff_dlog(((void*)0), " Vorbis time domain transform %u: %u\n",
                vorbis_time_count, vorbis_tdtransform);

        if (vorbis_tdtransform) {
            av_log(vc->avctx, AV_LOG_ERROR, "Vorbis time domain transform data nonzero. \n");
            return AVERROR_INVALIDDATA;
        }
    }
    return 0;
}
