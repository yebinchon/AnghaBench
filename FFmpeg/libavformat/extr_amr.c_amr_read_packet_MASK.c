#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_14__ {int cumulated_size; int block_count; } ;
struct TYPE_13__ {scalar_t__ codec_id; int bit_rate; } ;
struct TYPE_12__ {int /*<<< orphan*/  pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_11__ {int* data; int duration; int /*<<< orphan*/  pos; scalar_t__ stream_index; } ;
struct TYPE_10__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;
typedef  TYPE_5__ AMRContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 scalar_t__ AV_CODEC_ID_AMR_NB ; 
 scalar_t__ AV_CODEC_ID_AMR_WB ; 
 int /*<<< orphan*/  EIO ; 
 int UINT64_MAX ; 
 int* amrnb_packed_size ; 
 int* amrwb_packed_size ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    int read, size = 0, toc, mode;
    int64_t pos = FUNC6(s->pb);
    AMRContext *amr = s->priv_data;

    if (FUNC3(s->pb)) {
        return AVERROR_EOF;
    }

    // FIXME this is wrong, this should rather be in an AVParser
    toc  = FUNC4(s->pb);
    mode = (toc >> 3) & 0x0F;

    if (par->codec_id == AV_CODEC_ID_AMR_NB) {
        size = amrnb_packed_size[mode];
    } else if (par->codec_id == AV_CODEC_ID_AMR_WB) {
        size = amrwb_packed_size[mode];
    }

    if (!size || FUNC1(pkt, size))
        return FUNC0(EIO);

    if (amr->cumulated_size < UINT64_MAX - size) {
        amr->cumulated_size += size;
        /* Both AMR formats have 50 frames per second */
        s->streams[0]->codecpar->bit_rate = amr->cumulated_size / ++amr->block_count * 8 * 50;
    }

    pkt->stream_index = 0;
    pkt->pos          = pos;
    pkt->data[0]      = toc;
    pkt->duration     = par->codec_id == AV_CODEC_ID_AMR_NB ? 160 : 320;
    read              = FUNC5(s->pb, pkt->data + 1, size - 1);

    if (read != size - 1) {
        FUNC2(pkt);
        if (read < 0)
            return read;
        return FUNC0(EIO);
    }

    return 0;
}