#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_12__ {scalar_t__ codec_id; int channels; int /*<<< orphan*/  block_align; } ;
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__** streams; } ;
struct TYPE_10__ {int* data; int size; int duration; scalar_t__ stream_index; int /*<<< orphan*/  pos; } ;
struct TYPE_9__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ AV_CODEC_ID_ADPCM_THP ; 
 scalar_t__ AV_CODEC_ID_XMA2 ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    int64_t pos;
    int ret;

    if (FUNC2(s->pb))
        return AVERROR_EOF;

    pos = FUNC4(s->pb);
    if (par->codec_id == AV_CODEC_ID_ADPCM_THP &&
               par->channels > 1) {
        int i, ch;

        ret = FUNC1(pkt, par->block_align);
        if (ret < 0)
            return ret;
        for (i = 0; i < 4; i++) {
            for (ch = 0; ch < par->channels; ch++) {
                pkt->data[ch * 8 + i * 2 + 0] = FUNC3(s->pb);
                pkt->data[ch * 8 + i * 2 + 1] = FUNC3(s->pb);
            }
        }
        ret = 0;
    } else {
        ret = FUNC0(s->pb, pkt, par->block_align);
    }

    if (par->codec_id == AV_CODEC_ID_XMA2 && pkt->size >= 1)
        pkt->duration = (pkt->data[0] >> 2) * 512;

    pkt->pos = pos;
    pkt->stream_index = 0;

    return ret;
}