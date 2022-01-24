#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_10__ {int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; int bits_per_coded_sample; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, AVStream *st, AVPacket *pkt, int64_t length)
{
    const uint8_t *buf_ptr, *end_ptr;
    uint8_t *data_ptr;
    int i;

    if (length > 61444) /* worst case PAL 1920 samples 8 channels */
        return AVERROR_INVALIDDATA;
    length = FUNC0(pb, pkt, length);
    if (length < 0)
        return length;
    data_ptr = pkt->data;
    end_ptr = pkt->data + length;
    buf_ptr = pkt->data + 4; /* skip SMPTE 331M header */
    for (; end_ptr - buf_ptr >= st->codecpar->channels * 4; ) {
        for (i = 0; i < st->codecpar->channels; i++) {
            uint32_t sample = FUNC2(&buf_ptr);
            if (st->codecpar->bits_per_coded_sample == 24)
                FUNC4(&data_ptr, (sample >> 4) & 0xffffff);
            else
                FUNC3(&data_ptr, (sample >> 12) & 0xffff);
        }
        buf_ptr += 32 - st->codecpar->channels*4; // always 8 channels stored SMPTE 331M
    }
    FUNC1(pkt, data_ptr - pkt->data);
    return 0;
}