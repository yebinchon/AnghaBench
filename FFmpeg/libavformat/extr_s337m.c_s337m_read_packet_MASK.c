#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_15__ {int /*<<< orphan*/  nb_streams; int /*<<< orphan*/ * pb; } ;
struct TYPE_14__ {int size; scalar_t__ data; int /*<<< orphan*/  pos; } ;
struct TYPE_13__ {TYPE_1__* codecpar; } ;
struct TYPE_12__ {int codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (TYPE_4__*,int,int,int,int*,int*) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    uint64_t state = 0;
    int ret, data_type, data_size, offset;
    enum AVCodecID codec;
    int64_t pos;

    while (!FUNC2(state)) {
        state = (state << 8) | FUNC7(pb);
        if (FUNC6(pb))
            return AVERROR_EOF;
    }

    if (FUNC1(state)) {
        data_type = FUNC9(pb);
        data_size = FUNC9(pb);
    } else {
        data_type = FUNC10(pb);
        data_size = FUNC10(pb);
    }

    pos = FUNC11(pb);

    if ((ret = FUNC14(s, state, data_type, data_size, &offset, &codec)) < 0)
        return ret;

    if ((ret = FUNC3(pkt, offset)) < 0)
        return ret;

    pkt->pos = pos;

    if (FUNC8(pb, pkt->data, pkt->size) < pkt->size) {
        FUNC4(pkt);
        return AVERROR_EOF;
    }

    if (FUNC1(state))
        FUNC13((uint16_t *)pkt->data, (uint16_t *)pkt->data, pkt->size >> 1);
    else
        FUNC12(pkt->data, pkt->size);

    if (!s->nb_streams) {
        AVStream *st = FUNC5(s, NULL);
        if (!st) {
            FUNC4(pkt);
            return FUNC0(ENOMEM);
        }
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id   = codec;
    }

    return 0;
}