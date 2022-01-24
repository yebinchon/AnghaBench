#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int temporal_unit_size; int frame_unit_size; int /*<<< orphan*/  bsf; } ;
typedef  TYPE_1__ AnnexBContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVPacket *pkt)
{
    AnnexBContext *c = s->priv_data;
    uint32_t obu_unit_size;
    int ret, len;

retry:
    if (FUNC5(s->pb)) {
        if (c->temporal_unit_size || c->frame_unit_size)
            return FUNC0(EIO);
        FUNC2(c->bsf, NULL);
        goto end;
    }

    if (!c->temporal_unit_size) {
        len = FUNC6(s->pb, &c->temporal_unit_size);
        if (len < 0) return AVERROR_INVALIDDATA;
    }

    if (!c->frame_unit_size) {
        len = FUNC6(s->pb, &c->frame_unit_size);
        if (len < 0 || ((int64_t)c->frame_unit_size + len) > c->temporal_unit_size)
            return AVERROR_INVALIDDATA;
        c->temporal_unit_size -= len;
    }

    len = FUNC6(s->pb, &obu_unit_size);
    if (len < 0 || ((int64_t)obu_unit_size + len) > c->frame_unit_size)
        return AVERROR_INVALIDDATA;

    ret = FUNC3(s->pb, pkt, obu_unit_size);
    if (ret < 0)
        return ret;
    if (ret != obu_unit_size)
        return FUNC0(EIO);

    c->temporal_unit_size -= obu_unit_size + len;
    c->frame_unit_size -= obu_unit_size + len;

    ret = FUNC2(c->bsf, pkt);
    if (ret < 0) {
        FUNC4(s, AV_LOG_ERROR, "Failed to send packet to "
                                "av1_frame_merge filter\n");
        return ret;
    }

end:
    ret = FUNC1(c->bsf, pkt);
    if (ret < 0 && ret != FUNC0(EAGAIN) && ret != AVERROR_EOF)
        FUNC4(s, AV_LOG_ERROR, "av1_frame_merge filter failed to "
                                "send output packet\n");

    if (ret == FUNC0(EAGAIN))
        goto retry;

    return ret;
}