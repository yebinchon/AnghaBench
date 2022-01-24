#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int bytes_per_framesize_minus_1; int frames_in_superframe_minus_1; int* frame_sizes; int /*<<< orphan*/  superframe_marker; } ;
typedef  TYPE_1__ VP9RawSuperframeIndex ;
struct TYPE_17__ {int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {int /*<<< orphan*/  log_ctx; } ;
struct TYPE_15__ {int nb_units; size_t data_size; int /*<<< orphan*/ * data; TYPE_5__* data_ref; TYPE_2__* units; } ;
struct TYPE_14__ {size_t data_size; int /*<<< orphan*/ * data; int /*<<< orphan*/  data_ref; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ CodedBitstreamUnit ;
typedef  TYPE_3__ CodedBitstreamFragment ;
typedef  TYPE_4__ CodedBitstreamContext ;
typedef  TYPE_5__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  VP9_SUPERFRAME_MARKER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__* FUNC2 (scalar_t__) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (size_t) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(CodedBitstreamContext *ctx,
                                     CodedBitstreamFragment *frag)
{
    int err;

    if (frag->nb_units == 1) {
        // Output is just the content of the single frame.

        CodedBitstreamUnit *frame = &frag->units[0];

        frag->data_ref = FUNC3(frame->data_ref);
        if (!frag->data_ref)
            return FUNC0(ENOMEM);

        frag->data      = frame->data;
        frag->data_size = frame->data_size;

    } else {
        // Build superframe out of frames.

        VP9RawSuperframeIndex sfi;
        PutBitContext pbc;
        AVBufferRef *ref;
        uint8_t *data;
        size_t size, max, pos;
        int i, size_len;

        if (frag->nb_units > 8) {
            FUNC5(ctx->log_ctx, AV_LOG_ERROR, "Too many frames to "
                   "make superframe: %d.\n", frag->nb_units);
            return FUNC0(EINVAL);
        }

        max = 0;
        for (i = 0; i < frag->nb_units; i++)
            if (max < frag->units[i].data_size)
                max = frag->units[i].data_size;

        if (max < 2)
            size_len = 1;
        else
            size_len = FUNC6(max) / 8 + 1;
        FUNC1(size_len <= 4);

        sfi.superframe_marker            = VP9_SUPERFRAME_MARKER;
        sfi.bytes_per_framesize_minus_1  = size_len - 1;
        sfi.frames_in_superframe_minus_1 = frag->nb_units - 1;

        size = 2;
        for (i = 0; i < frag->nb_units; i++) {
            size += size_len + frag->units[i].data_size;
            sfi.frame_sizes[i] = frag->units[i].data_size;
        }

        ref = FUNC2(size + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!ref)
            return FUNC0(ENOMEM);
        data = ref->data;
        FUNC11(data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

        pos = 0;
        for (i = 0; i < frag->nb_units; i++) {
            FUNC1(size - pos > frag->units[i].data_size);
            FUNC10(data + pos, frag->units[i].data,
                   frag->units[i].data_size);
            pos += frag->units[i].data_size;
        }
        FUNC1(size - pos == 2 + frag->nb_units * size_len);

        FUNC9(&pbc, data + pos, size - pos);

        err = FUNC7(ctx, &pbc, &sfi);
        if (err < 0) {
            FUNC5(ctx->log_ctx, AV_LOG_ERROR, "Failed to write "
                   "superframe index.\n");
            FUNC4(&ref);
            return err;
        }

        FUNC1(FUNC12(&pbc) == 0);
        FUNC8(&pbc);

        frag->data_ref  = ref;
        frag->data      = data;
        frag->data_size = size;
    }

    return 0;
}