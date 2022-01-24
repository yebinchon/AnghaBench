#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {TYPE_1__* codecpar; TYPE_8__* priv_data; } ;
struct TYPE_31__ {unsigned int fifo_size; int /*<<< orphan*/  dts; int /*<<< orphan*/  fifo; } ;
struct TYPE_30__ {size_t stream_index; unsigned int size; int /*<<< orphan*/  member_0; scalar_t__ duration; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; int /*<<< orphan*/  data; } ;
struct TYPE_29__ {int nb_streams; TYPE_9__** streams; } ;
struct TYPE_28__ {scalar_t__ codec_type; } ;
typedef  TYPE_8__ AudioInterleaveContext ;
typedef  TYPE_9__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*,int (*) (TYPE_2__*,TYPE_3__ const*,TYPE_3__ const*)) ; 
 int FUNC5 (TYPE_2__*,TYPE_3__*,int,int) ; 

int FUNC6(AVFormatContext *s, AVPacket *out, AVPacket *pkt, int flush,
                        int (*get_packet)(AVFormatContext *, AVPacket *, AVPacket *, int),
                        int (*compare_ts)(AVFormatContext *, const AVPacket *, const AVPacket *))
{
    int i, ret;

    if (pkt) {
        AVStream *st = s->streams[pkt->stream_index];
        AudioInterleaveContext *aic = st->priv_data;
        if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            unsigned new_size = FUNC3(aic->fifo) + pkt->size;
            if (new_size > aic->fifo_size) {
                if (FUNC2(aic->fifo, new_size) < 0)
                    return FUNC0(ENOMEM);
                aic->fifo_size = new_size;
            }
            FUNC1(aic->fifo, pkt->data, pkt->size, NULL);
        } else {
            // rewrite pts and dts to be decoded time line position
            pkt->pts = pkt->dts = aic->dts;
            aic->dts += pkt->duration;
            if ((ret = FUNC4(s, pkt, compare_ts)) < 0)
                return ret;
        }
        pkt = NULL;
    }

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            AVPacket new_pkt = { 0 };
            while ((ret = FUNC5(s, &new_pkt, i, flush)) > 0) {
                if ((ret = FUNC4(s, &new_pkt, compare_ts)) < 0)
                    return ret;
            }
            if (ret < 0)
                return ret;
        }
    }

    return get_packet(s, out, NULL, flush);
}