
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t bandwidth; scalar_t__ stereo; } ;
struct TYPE_5__ {int avctx; TYPE_1__ packet; int redundancy_output; int redundancy_rc; int celt; } ;
typedef TYPE_2__ OpusStreamContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int * ff_celt_band_end ;
 int ff_celt_decode_frame (int ,int *,int ,scalar_t__,int,int ,int ) ;
 int ff_opus_rc_dec_init (int *,int const*,int) ;
 int ff_opus_rc_dec_raw_init (int *,int const*,int) ;

__attribute__((used)) static int opus_decode_redundancy(OpusStreamContext *s, const uint8_t *data, int size)
{
    int ret = ff_opus_rc_dec_init(&s->redundancy_rc, data, size);
    if (ret < 0)
        goto fail;
    ff_opus_rc_dec_raw_init(&s->redundancy_rc, data + size, size);

    ret = ff_celt_decode_frame(s->celt, &s->redundancy_rc,
                               s->redundancy_output,
                               s->packet.stereo + 1, 240,
                               0, ff_celt_band_end[s->packet.bandwidth]);
    if (ret < 0)
        goto fail;

    return 0;
fail:
    av_log(s->avctx, AV_LOG_ERROR, "Error decoding the redundancy frame.\n");
    return ret;
}
