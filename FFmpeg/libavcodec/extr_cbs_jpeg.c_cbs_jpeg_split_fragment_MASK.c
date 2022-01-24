#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  log_ctx; } ;
struct TYPE_7__ {int data_size; int* data; int /*<<< orphan*/ * data_ref; } ;
typedef  TYPE_1__ CodedBitstreamFragment ;
typedef  TYPE_2__ CodedBitstreamContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int JPEG_MARKER_EOI ; 
 int JPEG_MARKER_SOI ; 
 int JPEG_MARKER_SOS ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int,int,int*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(CodedBitstreamContext *ctx,
                                   CodedBitstreamFragment *frag,
                                   int header)
{
    AVBufferRef *data_ref;
    uint8_t *data;
    size_t data_size;
    int unit, start, end, marker, next_start, next_marker;
    int err, i, j, length;

    if (frag->data_size < 4) {
        // Definitely too short to be meaningful.
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i + 1 < frag->data_size && frag->data[i] != 0xff; i++);
    if (i > 0) {
        FUNC3(ctx->log_ctx, AV_LOG_WARNING, "Discarding %d bytes at "
               "beginning of image.\n", i);
    }
    for (++i; i + 1 < frag->data_size && frag->data[i] == 0xff; i++);
    if (i + 1 >= frag->data_size && frag->data[i]) {
        FUNC3(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
               "no SOI marker found.\n");
        return AVERROR_INVALIDDATA;
    }
    marker = frag->data[i];
    if (marker != JPEG_MARKER_SOI) {
        FUNC3(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: first "
               "marker is %02x, should be SOI.\n", marker);
        return AVERROR_INVALIDDATA;
    }
    for (++i; i + 1 < frag->data_size && frag->data[i] == 0xff; i++);
    if (i + 1 >= frag->data_size) {
        FUNC3(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
               "no image content found.\n");
        return AVERROR_INVALIDDATA;
    }
    marker = frag->data[i];
    start  = i + 1;

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
                    next_start  = i + 1;
                }
                break;
            }
        } else {
            i = start;
            if (i + 2 > frag->data_size) {
                FUNC3(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
                       "truncated at %02x marker.\n", marker);
                return AVERROR_INVALIDDATA;
            }
            length = FUNC1(frag->data + i);
            if (i + length > frag->data_size) {
                FUNC3(ctx->log_ctx, AV_LOG_ERROR, "Invalid JPEG image: "
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
                    next_start  = i + 1;
                }
            }
        }

        if (marker == JPEG_MARKER_SOS) {
            length = FUNC1(frag->data + start);

            data_ref = NULL;
            data     = FUNC4(end - start +
                                 AV_INPUT_BUFFER_PADDING_SIZE);
            if (!data)
                return FUNC0(ENOMEM);

            FUNC6(data, frag->data + start, length);
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

            FUNC7(data + data_size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

        } else {
            data      = frag->data + start;
            data_size = end - start;
            data_ref  = frag->data_ref;
        }

        err = FUNC5(ctx, frag, unit, marker,
                                      data, data_size, data_ref);
        if (err < 0) {
            if (!data_ref)
                FUNC2(&data);
            return err;
        }

        if (next_marker == -1)
            break;
        marker = next_marker;
        start  = next_start;
    }

    return 0;
}