#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int err_recognition; scalar_t__ height; scalar_t__ width; scalar_t__ sample_rate; int /*<<< orphan*/  channel_layout; scalar_t__ channels; TYPE_1__* codec; } ;
struct TYPE_6__ {int capabilities; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AV_CODEC_CAP_PARAM_CHANGE ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_PARAM_CHANGE ; 
 int AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT ; 
 int AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT ; 
 int AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS ; 
 int AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**) ; 
 int FUNC5 (TYPE_2__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, const AVPacket *avpkt)
{
    int size = 0, ret;
    const uint8_t *data;
    uint32_t flags;
    int64_t val;

    data = FUNC2(avpkt, AV_PKT_DATA_PARAM_CHANGE, &size);
    if (!data)
        return 0;

    if (!(avctx->codec->capabilities & AV_CODEC_CAP_PARAM_CHANGE)) {
        FUNC1(avctx, AV_LOG_ERROR, "This decoder does not support parameter "
               "changes, but PARAM_CHANGE side data was sent to it.\n");
        ret = FUNC0(EINVAL);
        goto fail2;
    }

    if (size < 4)
        goto fail;

    flags = FUNC3(&data);
    size -= 4;

    if (flags & AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT) {
        if (size < 4)
            goto fail;
        val = FUNC3(&data);
        if (val <= 0 || val > INT_MAX) {
            FUNC1(avctx, AV_LOG_ERROR, "Invalid channel count");
            ret = AVERROR_INVALIDDATA;
            goto fail2;
        }
        avctx->channels = val;
        size -= 4;
    }
    if (flags & AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT) {
        if (size < 8)
            goto fail;
        avctx->channel_layout = FUNC4(&data);
        size -= 8;
    }
    if (flags & AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE) {
        if (size < 4)
            goto fail;
        val = FUNC3(&data);
        if (val <= 0 || val > INT_MAX) {
            FUNC1(avctx, AV_LOG_ERROR, "Invalid sample rate");
            ret = AVERROR_INVALIDDATA;
            goto fail2;
        }
        avctx->sample_rate = val;
        size -= 4;
    }
    if (flags & AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS) {
        if (size < 8)
            goto fail;
        avctx->width  = FUNC3(&data);
        avctx->height = FUNC3(&data);
        size -= 8;
        ret = FUNC5(avctx, avctx->width, avctx->height);
        if (ret < 0)
            goto fail2;
    }

    return 0;
fail:
    FUNC1(avctx, AV_LOG_ERROR, "PARAM_CHANGE side data too small.\n");
    ret = AVERROR_INVALIDDATA;
fail2:
    if (ret < 0) {
        FUNC1(avctx, AV_LOG_ERROR, "Error applying parameter changes.\n");
        if (avctx->err_recognition & AV_EF_EXPLODE)
            return ret;
    }
    return 0;
}