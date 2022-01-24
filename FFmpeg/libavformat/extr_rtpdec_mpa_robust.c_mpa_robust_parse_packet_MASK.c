#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_12__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  stream_index; } ;
struct TYPE_11__ {int /*<<< orphan*/  index; } ;
struct TYPE_10__ {size_t split_pos; int split_buf_size; unsigned int adu_size; int cur_size; scalar_t__ timestamp; int /*<<< orphan*/  fragment; int /*<<< orphan*/ * split_buf; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *ctx, PayloadContext *data,
                                   AVStream *st, AVPacket *pkt,
                                   uint32_t *timestamp, const uint8_t *buf,
                                   int len, uint16_t seq, int flags)
{
    unsigned adu_size, continuation;
    int err, header_size;

    if (!buf) {
        buf = &data->split_buf[data->split_pos];
        len = data->split_buf_size - data->split_pos;

        header_size = FUNC11(ctx, buf, len, &adu_size,
                                                  &continuation);
        if (header_size < 0) {
            FUNC1(&data->split_buf);
            return header_size;
        }
        buf += header_size;
        len -= header_size;

        if (continuation || adu_size > len) {
            FUNC1(&data->split_buf);
            FUNC2(ctx, AV_LOG_ERROR, "Invalid frame\n");
            return AVERROR_INVALIDDATA;
        }

        if (FUNC4(pkt, adu_size)) {
            FUNC2(ctx, AV_LOG_ERROR, "Out of memory.\n");
            return FUNC0(ENOMEM);
        }

        pkt->stream_index = st->index;
        FUNC10(pkt->data, buf, adu_size);

        data->split_pos += header_size + adu_size;

        if (data->split_pos == data->split_buf_size) {
            FUNC1(&data->split_buf);
            return 0;
        }

        return 1;
    }


    header_size = FUNC11(ctx, buf, len, &adu_size,
                                              &continuation);
    if (header_size < 0)
        return header_size;

    buf += header_size;
    len -= header_size;

    if (!continuation && adu_size <= len) {
        /* One or more complete frames */

        if (FUNC4(pkt, adu_size)) {
            FUNC2(ctx, AV_LOG_ERROR, "Out of memory.\n");
            return FUNC0(ENOMEM);
        }

        pkt->stream_index = st->index;
        FUNC10(pkt->data, buf, adu_size);

        buf += adu_size;
        len -= adu_size;
        if (len) {
            data->split_buf_size = len;
            data->split_buf = FUNC3(data->split_buf_size);
            data->split_pos = 0;
            if (!data->split_buf) {
                FUNC2(ctx, AV_LOG_ERROR, "Out of memory.\n");
                FUNC5(pkt);
                return FUNC0(ENOMEM);
            }
            FUNC10(data->split_buf, buf, data->split_buf_size);
            return 1;
        }
        return 0;
    } else if (!continuation) { /* && adu_size > len */
        /* First fragment */
        FUNC9(&data->fragment);

        data->adu_size = adu_size;
        data->cur_size = len;
        data->timestamp = *timestamp;

        err = FUNC6(&data->fragment);
        if (err < 0)
            return err;

        FUNC7(data->fragment, buf, len);
        return FUNC0(EAGAIN);
    }
    /* else continuation == 1 */

    /* Fragment other than first */
    if (!data->fragment) {
        FUNC2(ctx, AV_LOG_WARNING,
            "Received packet without a start fragment; dropping.\n");
        return FUNC0(EAGAIN);
    }
    if (adu_size != data->adu_size ||
        data->timestamp != *timestamp) {
        FUNC9(&data->fragment);
        FUNC2(ctx, AV_LOG_ERROR, "Invalid packet received\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC7(data->fragment, buf, len);
    data->cur_size += len;

    if (data->cur_size < data->adu_size)
        return FUNC0(EAGAIN);

    err = FUNC8(pkt, &data->fragment, st->index);
    if (err < 0) {
        FUNC2(ctx, AV_LOG_ERROR,
               "Error occurred when getting fragment buffer.\n");
        return err;
    }

    return 0;
}