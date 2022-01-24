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
struct TYPE_12__ {scalar_t__ codec_id; int block_align; scalar_t__ codec_tag; int channels; } ;
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__** streams; } ;
struct TYPE_10__ {int* data; int size; int duration; scalar_t__ stream_index; int /*<<< orphan*/  pos; } ;
struct TYPE_9__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_RAD ; 
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_WAV ; 
 scalar_t__ AV_CODEC_ID_ADPCM_PSX ; 
 scalar_t__ AV_CODEC_ID_XMA2 ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret, size = 1024;
    int64_t pos;

    if (FUNC3(s->pb))
        return AVERROR_EOF;

    pos = FUNC5(s->pb);
    if (par->codec_id == AV_CODEC_ID_ADPCM_IMA_RAD ||
        par->codec_id == AV_CODEC_ID_ADPCM_PSX     ||
        par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV ||
        par->codec_id == AV_CODEC_ID_XMA2) {
        ret = FUNC1(s->pb, pkt, par->block_align);
    } else if (par->codec_tag == FUNC0('W','A','D','P') &&
               par->channels > 1) {
        int i, ch;

        ret = FUNC2(pkt, par->block_align);
        if (ret < 0)
            return ret;
        for (i = 0; i < 4; i++) {
            for (ch = 0; ch < par->channels; ch++) {
                pkt->data[ch * 8 + i * 2 + 0] = FUNC4(s->pb);
                pkt->data[ch * 8 + i * 2 + 1] = FUNC4(s->pb);
            }
        }
        ret = 0;
    } else {
        ret = FUNC1(s->pb, pkt, size);
    }

    if (par->codec_id == AV_CODEC_ID_XMA2 && pkt->size >= 1)
        pkt->duration = (pkt->data[0] >> 2) * 512;

    pkt->pos = pos;
    pkt->stream_index = 0;

    return ret;
}