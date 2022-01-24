#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pb; } ;
struct TYPE_11__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int ADTS_HEADER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ID3v2_DEFAULT_MAGIC ; 
 int ID3v2_HEADER_SIZE ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, AVPacket *pkt)
{
    int ret, fsize;

retry:
    ret = FUNC6(s->pb, pkt, ADTS_HEADER_SIZE);
    if (ret < 0)
        return ret;

    if (ret < ADTS_HEADER_SIZE) {
        FUNC7(pkt);
        return FUNC0(EIO);
    }

    if ((FUNC1(pkt->data) >> 4) != 0xfff) {
        // Parse all the ID3 headers between frames
        int append = ID3v2_HEADER_SIZE - ADTS_HEADER_SIZE;

        FUNC5(append > 0);
        ret = FUNC4(s->pb, pkt, append);
        if (ret != append) {
            FUNC7(pkt);
            return FUNC0(EIO);
        }
        if (!FUNC8(pkt->data, ID3v2_DEFAULT_MAGIC)) {
            FUNC7(pkt);
            ret = FUNC3(s);
        } else
            ret = FUNC9(s, pkt);
        if (ret < 0)
            return ret;

        goto retry;
    }

    fsize = (FUNC2(pkt->data + 3) >> 13) & 0x1FFF;
    if (fsize < ADTS_HEADER_SIZE) {
        FUNC7(pkt);
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC4(s->pb, pkt, fsize - pkt->size);
    if (ret < 0)
        FUNC7(pkt);

    return ret;
}