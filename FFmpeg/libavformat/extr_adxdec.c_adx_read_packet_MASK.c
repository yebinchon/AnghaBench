#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int header_size; } ;
struct TYPE_14__ {int channels; } ;
struct TYPE_13__ {int /*<<< orphan*/  pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_12__ {int pos; int size; int duration; int pts; int /*<<< orphan*/  data; scalar_t__ stream_index; } ;
struct TYPE_11__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;
typedef  TYPE_5__ ADXDemuxerContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    ADXDemuxerContext *c = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret, size;

    if (par->channels <= 0) {
        FUNC3(s, AV_LOG_ERROR, "invalid number of channels %d\n", par->channels);
        return AVERROR_INVALIDDATA;
    }

    size = BLOCK_SIZE * par->channels;

    pkt->pos = FUNC5(s->pb);
    pkt->stream_index = 0;

    ret = FUNC2(s->pb, pkt, size);
    if (ret != size) {
        FUNC4(pkt);
        return ret < 0 ? ret : FUNC0(EIO);
    }
    if (FUNC1(pkt->data) & 0x8000) {
        FUNC4(pkt);
        return AVERROR_EOF;
    }
    pkt->size     = size;
    pkt->duration = 1;
    pkt->pts      = (pkt->pos - c->header_size) / size;

    return 0;
}