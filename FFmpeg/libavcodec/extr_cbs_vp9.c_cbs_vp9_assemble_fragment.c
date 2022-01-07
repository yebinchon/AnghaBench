
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int bytes_per_framesize_minus_1; int frames_in_superframe_minus_1; int* frame_sizes; int superframe_marker; } ;
typedef TYPE_1__ VP9RawSuperframeIndex ;
struct TYPE_17__ {int * data; } ;
struct TYPE_16__ {int log_ctx; } ;
struct TYPE_15__ {int nb_units; size_t data_size; int * data; TYPE_5__* data_ref; TYPE_2__* units; } ;
struct TYPE_14__ {size_t data_size; int * data; int data_ref; } ;
typedef int PutBitContext ;
typedef TYPE_2__ CodedBitstreamUnit ;
typedef TYPE_3__ CodedBitstreamFragment ;
typedef TYPE_4__ CodedBitstreamContext ;
typedef TYPE_5__ AVBufferRef ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int VP9_SUPERFRAME_MARKER ;
 int av_assert0 (int) ;
 TYPE_5__* av_buffer_alloc (scalar_t__) ;
 TYPE_5__* av_buffer_ref (int ) ;
 int av_buffer_unref (TYPE_5__**) ;
 int av_log (int ,int ,char*,...) ;
 int av_log2 (size_t) ;
 int cbs_vp9_write_superframe_index (TYPE_4__*,int *,TYPE_1__*) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,size_t) ;
 int memcpy (int *,int *,size_t) ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ put_bits_left (int *) ;

__attribute__((used)) static int cbs_vp9_assemble_fragment(CodedBitstreamContext *ctx,
                                     CodedBitstreamFragment *frag)
{
    int err;

    if (frag->nb_units == 1) {


        CodedBitstreamUnit *frame = &frag->units[0];

        frag->data_ref = av_buffer_ref(frame->data_ref);
        if (!frag->data_ref)
            return AVERROR(ENOMEM);

        frag->data = frame->data;
        frag->data_size = frame->data_size;

    } else {


        VP9RawSuperframeIndex sfi;
        PutBitContext pbc;
        AVBufferRef *ref;
        uint8_t *data;
        size_t size, max, pos;
        int i, size_len;

        if (frag->nb_units > 8) {
            av_log(ctx->log_ctx, AV_LOG_ERROR, "Too many frames to "
                   "make superframe: %d.\n", frag->nb_units);
            return AVERROR(EINVAL);
        }

        max = 0;
        for (i = 0; i < frag->nb_units; i++)
            if (max < frag->units[i].data_size)
                max = frag->units[i].data_size;

        if (max < 2)
            size_len = 1;
        else
            size_len = av_log2(max) / 8 + 1;
        av_assert0(size_len <= 4);

        sfi.superframe_marker = VP9_SUPERFRAME_MARKER;
        sfi.bytes_per_framesize_minus_1 = size_len - 1;
        sfi.frames_in_superframe_minus_1 = frag->nb_units - 1;

        size = 2;
        for (i = 0; i < frag->nb_units; i++) {
            size += size_len + frag->units[i].data_size;
            sfi.frame_sizes[i] = frag->units[i].data_size;
        }

        ref = av_buffer_alloc(size + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!ref)
            return AVERROR(ENOMEM);
        data = ref->data;
        memset(data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

        pos = 0;
        for (i = 0; i < frag->nb_units; i++) {
            av_assert0(size - pos > frag->units[i].data_size);
            memcpy(data + pos, frag->units[i].data,
                   frag->units[i].data_size);
            pos += frag->units[i].data_size;
        }
        av_assert0(size - pos == 2 + frag->nb_units * size_len);

        init_put_bits(&pbc, data + pos, size - pos);

        err = cbs_vp9_write_superframe_index(ctx, &pbc, &sfi);
        if (err < 0) {
            av_log(ctx->log_ctx, AV_LOG_ERROR, "Failed to write "
                   "superframe index.\n");
            av_buffer_unref(&ref);
            return err;
        }

        av_assert0(put_bits_left(&pbc) == 0);
        flush_put_bits(&pbc);

        frag->data_ref = ref;
        frag->data = data;
        frag->data_size = size;
    }

    return 0;
}
