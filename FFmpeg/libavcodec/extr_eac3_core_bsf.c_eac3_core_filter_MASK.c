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
struct TYPE_8__ {scalar_t__ frame_type; scalar_t__ frame_size; } ;
struct TYPE_7__ {scalar_t__ data; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVBSFContext ;
typedef  TYPE_2__ AC3HeaderInfo ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ EAC3_FRAME_TYPE_AC3_CONVERT ; 
 scalar_t__ EAC3_FRAME_TYPE_DEPENDENT ; 
 scalar_t__ EAC3_FRAME_TYPE_INDEPENDENT ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(AVBSFContext *ctx, AVPacket *pkt)
{
    AC3HeaderInfo hdr;
    GetBitContext gbc;
    int ret;

    ret = FUNC3(ctx, pkt);
    if (ret < 0)
        return ret;
    ret = FUNC4(&gbc, pkt->data, pkt->size);
    if (ret < 0)
        goto fail;

    ret = FUNC2(&gbc, &hdr);
    if (ret < 0) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    if (hdr.frame_type == EAC3_FRAME_TYPE_INDEPENDENT ||
        hdr.frame_type == EAC3_FRAME_TYPE_AC3_CONVERT) {
        pkt->size = FUNC0(hdr.frame_size, pkt->size);
    } else if (hdr.frame_type == EAC3_FRAME_TYPE_DEPENDENT && pkt->size > hdr.frame_size) {
        AC3HeaderInfo hdr2;

        ret = FUNC4(&gbc, pkt->data + hdr.frame_size, pkt->size - hdr.frame_size);
        if (ret < 0)
            goto fail;

        ret = FUNC2(&gbc, &hdr2);
        if (ret < 0) {
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }

        if (hdr2.frame_type == EAC3_FRAME_TYPE_INDEPENDENT ||
            hdr2.frame_type == EAC3_FRAME_TYPE_AC3_CONVERT) {
            pkt->size -= hdr.frame_size;
            pkt->data += hdr.frame_size;
        } else {
            pkt->size = 0;
        }
    } else {
        pkt->size = 0;
    }

    return 0;
fail:
    FUNC1(pkt);
    return ret;
}