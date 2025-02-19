
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_26__ {int thread_count; int (* execute ) (TYPE_7__*,int ,TYPE_5__*,int *,int,int) ;int (* execute2 ) (TYPE_7__*,int ,TYPE_5__*,int *,int) ;} ;
struct TYPE_20__ {int den; scalar_t__ num; } ;
struct TYPE_21__ {TYPE_1__ bytes; } ;
struct TYPE_23__ {int prefix_bytes; int const size_scaler; } ;
struct TYPE_19__ {int* buffer; } ;
struct TYPE_25__ {int slice_params_num_buf; int num_x; int num_y; int pshift; int threads_num_buf; int thread_buf_size; TYPE_3__* plane; scalar_t__ dc_prediction; TYPE_7__* avctx; TYPE_2__ lowdelay; TYPE_4__ highquality; scalar_t__ hq_picture; TYPE_13__ gb; TYPE_5__* thread_buf; TYPE_5__* slice_params_buf; } ;
struct TYPE_24__ {int bytes; int slice_x; int slice_y; int gb; } ;
struct TYPE_22__ {int ** band; } ;
typedef int SliceCoeffs ;
typedef TYPE_5__ DiracSlice ;
typedef TYPE_6__ DiracContext ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int INT_MAX ;
 int MAX_DWT_LEVELS ;
 int align_get_bits (TYPE_13__*) ;
 int av_log (TYPE_7__*,int ,char*) ;
 void* av_realloc_f (TYPE_5__*,int,int) ;
 int decode_hq_slice_row ;
 int decode_lowdelay_slice ;
 int get_bits_count (TYPE_13__*) ;
 int get_bits_left (TYPE_13__*) ;
 int init_get_bits (int *,int const*,int) ;
 int intra_dc_prediction_10 (int *) ;
 int intra_dc_prediction_8 (int *) ;
 int stub1 (TYPE_7__*,int ,TYPE_5__*,int *,int) ;
 int stub2 (TYPE_7__*,int ,TYPE_5__*,int *,int,int) ;
 int subband_coeffs (TYPE_6__*,int,int,int ,int *) ;

__attribute__((used)) static int decode_lowdelay(DiracContext *s)
{
    AVCodecContext *avctx = s->avctx;
    int slice_x, slice_y, bufsize;
    int64_t coef_buf_size, bytes = 0;
    const uint8_t *buf;
    DiracSlice *slices;
    SliceCoeffs tmp[MAX_DWT_LEVELS];
    int slice_num = 0;

    if (s->slice_params_num_buf != (s->num_x * s->num_y)) {
        s->slice_params_buf = av_realloc_f(s->slice_params_buf, s->num_x * s->num_y, sizeof(DiracSlice));
        if (!s->slice_params_buf) {
            av_log(s->avctx, AV_LOG_ERROR, "slice params buffer allocation failure\n");
            s->slice_params_num_buf = 0;
            return AVERROR(ENOMEM);
        }
        s->slice_params_num_buf = s->num_x * s->num_y;
    }
    slices = s->slice_params_buf;



    coef_buf_size = subband_coeffs(s, s->num_x - 1, s->num_y - 1, 0, tmp) + 8;
    coef_buf_size = (coef_buf_size << (1 + s->pshift)) + 512;

    if (s->threads_num_buf != avctx->thread_count ||
        s->thread_buf_size != coef_buf_size) {
        s->threads_num_buf = avctx->thread_count;
        s->thread_buf_size = coef_buf_size;
        s->thread_buf = av_realloc_f(s->thread_buf, avctx->thread_count, s->thread_buf_size);
        if (!s->thread_buf) {
            av_log(s->avctx, AV_LOG_ERROR, "thread buffer allocation failure\n");
            return AVERROR(ENOMEM);
        }
    }

    align_get_bits(&s->gb);

    buf = s->gb.buffer + get_bits_count(&s->gb)/8;
    bufsize = get_bits_left(&s->gb);

    if (s->hq_picture) {
        int i;

        for (slice_y = 0; bufsize > 0 && slice_y < s->num_y; slice_y++) {
            for (slice_x = 0; bufsize > 0 && slice_x < s->num_x; slice_x++) {
                bytes = s->highquality.prefix_bytes + 1;
                for (i = 0; i < 3; i++) {
                    if (bytes <= bufsize/8)
                        bytes += buf[bytes] * s->highquality.size_scaler + 1;
                }
                if (bytes >= INT_MAX || bytes*8 > bufsize) {
                    av_log(s->avctx, AV_LOG_ERROR, "too many bytes\n");
                    return AVERROR_INVALIDDATA;
                }

                slices[slice_num].bytes = bytes;
                slices[slice_num].slice_x = slice_x;
                slices[slice_num].slice_y = slice_y;
                init_get_bits(&slices[slice_num].gb, buf, bufsize);
                slice_num++;

                buf += bytes;
                if (bufsize/8 >= bytes)
                    bufsize -= bytes*8;
                else
                    bufsize = 0;
            }
        }

        if (s->num_x*s->num_y != slice_num) {
            av_log(s->avctx, AV_LOG_ERROR, "too few slices\n");
            return AVERROR_INVALIDDATA;
        }

        avctx->execute2(avctx, decode_hq_slice_row, slices, ((void*)0), s->num_y);
    } else {
        for (slice_y = 0; bufsize > 0 && slice_y < s->num_y; slice_y++) {
            for (slice_x = 0; bufsize > 0 && slice_x < s->num_x; slice_x++) {
                bytes = (slice_num+1) * (int64_t)s->lowdelay.bytes.num / s->lowdelay.bytes.den
                       - slice_num * (int64_t)s->lowdelay.bytes.num / s->lowdelay.bytes.den;
                if (bytes >= INT_MAX || bytes*8 > bufsize) {
                    av_log(s->avctx, AV_LOG_ERROR, "too many bytes\n");
                    return AVERROR_INVALIDDATA;
                }
                slices[slice_num].bytes = bytes;
                slices[slice_num].slice_x = slice_x;
                slices[slice_num].slice_y = slice_y;
                init_get_bits(&slices[slice_num].gb, buf, bufsize);
                slice_num++;

                buf += bytes;
                if (bufsize/8 >= bytes)
                    bufsize -= bytes*8;
                else
                    bufsize = 0;
            }
        }
        avctx->execute(avctx, decode_lowdelay_slice, slices, ((void*)0), slice_num,
                       sizeof(DiracSlice));
    }

    if (s->dc_prediction) {
        if (s->pshift) {
            intra_dc_prediction_10(&s->plane[0].band[0][0]);
            intra_dc_prediction_10(&s->plane[1].band[0][0]);
            intra_dc_prediction_10(&s->plane[2].band[0][0]);
        } else {
            intra_dc_prediction_8(&s->plane[0].band[0][0]);
            intra_dc_prediction_8(&s->plane[1].band[0][0]);
            intra_dc_prediction_8(&s->plane[2].band[0][0]);
        }
    }

    return 0;
}
