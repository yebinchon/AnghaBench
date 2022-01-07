
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int log_ctx; } ;
struct TYPE_7__ {int data_size; int* data; int * data_ref; } ;
typedef TYPE_1__ CodedBitstreamFragment ;
typedef TYPE_2__ CodedBitstreamContext ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_RB16 (int*) ;
 int ENOMEM ;
 int JPEG_MARKER_EOI ;
 int JPEG_MARKER_SOI ;
 int JPEG_MARKER_SOS ;
 int av_freep (int**) ;
 int av_log (int ,int ,char*,...) ;
 int* av_malloc (scalar_t__) ;
 int ff_cbs_insert_unit_data (TYPE_2__*,TYPE_1__*,int,int,int*,size_t,int *) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,scalar_t__) ;

__attribute__((used)) static int cbs_jpeg_split_fragment(CodedBitstreamContext *ctx,
                                   CodedBitstreamFragment *frag,
                                   int header)
{
    AVBufferRef *data_ref;
    uint8_t *data;
    size_t data_size;
    int unit, start, end, marker, next_start, next_marker;
    int err, i, j, length;

    if (frag->data_size < 4) {

        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i + 1 < frag->data_size && frag->data[i] != 0xff; i++);
    if (i > 0) {
        av_log(ctx->log_ctx, AV_LOG_WARNING, "Discarding %d bytes at "
               "beginning of image.\n", i);
    }
    for (++i; i + 1 < frag->data_size && frag->data[i] == 0xff; i++);
    if (i + 1 >= frag->data_size && frag->data[i]) {
        av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
               "no SOI marker found.\n");
        return AVERROR_INVALIDDATA;
    }
    marker = frag->data[i];
    if (marker != JPEG_MARKER_SOI) {
        av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: first "
               "marker is %02x, should be SOI.\n", marker);
        return AVERROR_INVALIDDATA;
    }
    for (++i; i + 1 < frag->data_size && frag->data[i] == 0xff; i++);
    if (i + 1 >= frag->data_size) {
        av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
               "no image content found.\n");
        return AVERROR_INVALIDDATA;
    }
    marker = frag->data[i];
    start = i + 1;

    for (unit = 0;; unit++) {
        if (marker == JPEG_MARKER_EOI) {
            break;
        } else if (marker == JPEG_MARKER_SOS) {
            for (i = start; i + 1 < frag->data_size; i++) {
                if (frag->data[i] != 0xff)
                    continue;
                end = i;
                for (++i; i + 1 < frag->data_size &&
                          frag->data[i] == 0xff; i++);
                if (i + 1 >= frag->data_size) {
                    next_marker = -1;
                } else {
                    if (frag->data[i] == 0x00)
                        continue;
                    next_marker = frag->data[i];
                    next_start = i + 1;
                }
                break;
            }
        } else {
            i = start;
            if (i + 2 > frag->data_size) {
                av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
                       "truncated at %02x marker.\n", marker);
                return AVERROR_INVALIDDATA;
            }
            length = AV_RB16(frag->data + i);
            if (i + length > frag->data_size) {
                av_log(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
                       "truncated at %02x marker segment.\n", marker);
                return AVERROR_INVALIDDATA;
            }
            end = start + length;

            i = end;
            if (frag->data[i] != 0xff) {
                next_marker = -1;
            } else {
                for (++i; i + 1 < frag->data_size &&
                          frag->data[i] == 0xff; i++);
                if (i + 1 >= frag->data_size) {
                    next_marker = -1;
                } else {
                    next_marker = frag->data[i];
                    next_start = i + 1;
                }
            }
        }

        if (marker == JPEG_MARKER_SOS) {
            length = AV_RB16(frag->data + start);

            data_ref = ((void*)0);
            data = av_malloc(end - start +
                                 AV_INPUT_BUFFER_PADDING_SIZE);
            if (!data)
                return AVERROR(ENOMEM);

            memcpy(data, frag->data + start, length);
            for (i = start + length, j = length; i < end; i++, j++) {
                if (frag->data[i] == 0xff) {
                    while (frag->data[i] == 0xff)
                        ++i;
                    data[j] = 0xff;
                } else {
                    data[j] = frag->data[i];
                }
            }
            data_size = j;

            memset(data + data_size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

        } else {
            data = frag->data + start;
            data_size = end - start;
            data_ref = frag->data_ref;
        }

        err = ff_cbs_insert_unit_data(ctx, frag, unit, marker,
                                      data, data_size, data_ref);
        if (err < 0) {
            if (!data_ref)
                av_freep(&data);
            return err;
        }

        if (next_marker == -1)
            break;
        marker = next_marker;
        start = next_start;
    }

    return 0;
}
