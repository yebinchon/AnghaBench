
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;
struct TYPE_8__ {int blocksize; } ;
struct TYPE_7__ {int (* bswap16_buf ) (int *,int const*,int) ;} ;
struct TYPE_9__ {int channels; int md5ctx; int * md5_buffer; TYPE_3__ frame; TYPE_2__ bdsp; TYPE_1__* avctx; int md5_buffer_size; } ;
struct TYPE_6__ {int bits_per_raw_sample; } ;
typedef TYPE_4__ FlacEncodeContext ;


 int AVERROR (int ) ;
 int AV_WL24 (int *,int) ;
 int ENOMEM ;
 scalar_t__ HAVE_BIGENDIAN ;
 int av_fast_malloc (int **,int *,int) ;
 int av_md5_update (int ,int const*,int) ;
 int stub1 (int *,int const*,int) ;

__attribute__((used)) static int update_md5_sum(FlacEncodeContext *s, const void *samples)
{
    const uint8_t *buf;
    int buf_size = s->frame.blocksize * s->channels *
                   ((s->avctx->bits_per_raw_sample + 7) / 8);

    if (s->avctx->bits_per_raw_sample > 16 || HAVE_BIGENDIAN) {
        av_fast_malloc(&s->md5_buffer, &s->md5_buffer_size, buf_size);
        if (!s->md5_buffer)
            return AVERROR(ENOMEM);
    }

    if (s->avctx->bits_per_raw_sample <= 16) {
        buf = (const uint8_t *)samples;





    } else {
        int i;
        const int32_t *samples0 = samples;
        uint8_t *tmp = s->md5_buffer;

        for (i = 0; i < s->frame.blocksize * s->channels; i++) {
            int32_t v = samples0[i] >> 8;
            AV_WL24(tmp + 3*i, v);
        }
        buf = s->md5_buffer;
    }
    av_md5_update(s->md5ctx, buf, buf_size);

    return 0;
}
