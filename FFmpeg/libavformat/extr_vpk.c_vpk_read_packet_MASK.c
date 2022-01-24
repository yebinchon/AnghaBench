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
struct TYPE_12__ {scalar_t__ current_block; scalar_t__ block_count; unsigned int last_block_size; } ;
typedef  TYPE_2__ VPKDemuxContext ;
struct TYPE_15__ {unsigned int channels; unsigned int block_align; } ;
struct TYPE_14__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; TYPE_1__** streams; } ;
struct TYPE_13__ {scalar_t__ stream_index; scalar_t__ data; } ;
struct TYPE_11__ {TYPE_5__* codecpar; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,unsigned int) ; 
 int FUNC2 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    VPKDemuxContext *vpk = s->priv_data;
    int ret, i;

    vpk->current_block++;
    if (vpk->current_block == vpk->block_count) {
        unsigned size = vpk->last_block_size / par->channels;
        unsigned skip = (par->block_align - vpk->last_block_size) / par->channels;

        ret = FUNC2(pkt, vpk->last_block_size);
        if (ret < 0)
            return ret;
        for (i = 0; i < par->channels; i++) {
            ret = FUNC4(s->pb, pkt->data + i * size, size);
            FUNC5(s->pb, skip);
            if (ret != size) {
                FUNC3(pkt);
                ret = FUNC0(EIO);
                break;
            }
        }
        pkt->stream_index = 0;
    } else if (vpk->current_block < vpk->block_count) {
        ret = FUNC1(s->pb, pkt, par->block_align);
        pkt->stream_index = 0;
    } else {
        return AVERROR_EOF;
    }

    return ret;
}