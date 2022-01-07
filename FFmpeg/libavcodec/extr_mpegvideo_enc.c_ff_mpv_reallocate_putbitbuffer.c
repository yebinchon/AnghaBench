
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_1__* internal; } ;
struct TYPE_9__ {int buf_end; int buf; } ;
struct TYPE_8__ {int slice_context_count; int ptr_lastgob; int vbv_delay_ptr; TYPE_3__ pb; TYPE_6__* avctx; } ;
struct TYPE_7__ {scalar_t__ byte_buffer; size_t byte_buffer_size; } ;
typedef TYPE_2__ MpegEncContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int INT_MAX ;
 int av_fast_padded_malloc (int **,int*,size_t) ;
 int av_free (scalar_t__) ;
 int av_log (TYPE_6__*,int ,char*) ;
 int emms_c () ;
 int memcpy (int *,scalar_t__,size_t) ;
 int put_bits_count (TYPE_3__*) ;
 int rebase_put_bits (TYPE_3__*,int *,int) ;

int ff_mpv_reallocate_putbitbuffer(MpegEncContext *s, size_t threshold, size_t size_increase)
{
    if ( s->pb.buf_end - s->pb.buf - (put_bits_count(&s->pb)>>3) < threshold
        && s->slice_context_count == 1
        && s->pb.buf == s->avctx->internal->byte_buffer) {
        int lastgob_pos = s->ptr_lastgob - s->pb.buf;
        int vbv_pos = s->vbv_delay_ptr - s->pb.buf;

        uint8_t *new_buffer = ((void*)0);
        int new_buffer_size = 0;

        if ((s->avctx->internal->byte_buffer_size + size_increase) >= INT_MAX/8) {
            av_log(s->avctx, AV_LOG_ERROR, "Cannot reallocate putbit buffer\n");
            return AVERROR(ENOMEM);
        }

        emms_c();

        av_fast_padded_malloc(&new_buffer, &new_buffer_size,
                              s->avctx->internal->byte_buffer_size + size_increase);
        if (!new_buffer)
            return AVERROR(ENOMEM);

        memcpy(new_buffer, s->avctx->internal->byte_buffer, s->avctx->internal->byte_buffer_size);
        av_free(s->avctx->internal->byte_buffer);
        s->avctx->internal->byte_buffer = new_buffer;
        s->avctx->internal->byte_buffer_size = new_buffer_size;
        rebase_put_bits(&s->pb, new_buffer, new_buffer_size);
        s->ptr_lastgob = s->pb.buf + lastgob_pos;
        s->vbv_delay_ptr = s->pb.buf + vbv_pos;
    }
    if (s->pb.buf_end - s->pb.buf - (put_bits_count(&s->pb)>>3) < threshold)
        return AVERROR(EINVAL);
    return 0;
}
