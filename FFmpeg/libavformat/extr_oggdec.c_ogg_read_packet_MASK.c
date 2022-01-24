#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ogg_stream {int pflags; int new_metadata_size; scalar_t__ new_metadata; scalar_t__ end_trimming; int /*<<< orphan*/  pduration; scalar_t__ buf; scalar_t__ keyframe_seek; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef  void* int64_t ;
struct TYPE_13__ {struct ogg* priv_data; int /*<<< orphan*/ * streams; scalar_t__ io_repositioned; } ;
struct TYPE_12__ {int stream_index; int flags; void* pos; int /*<<< orphan*/  duration; void* dts; void* pts; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_DATA_METADATA_UPDATE ; 
 int /*<<< orphan*/  AV_PKT_DATA_SKIP_SAMPLES ; 
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 void* FUNC7 (TYPE_2__*,int,void**) ; 
 int FUNC8 (TYPE_2__*,int*,int*,int*,void**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVPacket *pkt)
{
    struct ogg *ogg;
    struct ogg_stream *os;
    int idx, ret;
    int pstart, psize;
    int64_t fpos, pts, dts;

    if (s->io_repositioned) {
        FUNC9(s);
        s->io_repositioned = 0;
    }

    //Get an ogg packet
retry:
    do {
        ret = FUNC8(s, &idx, &pstart, &psize, &fpos);
        if (ret < 0)
            return ret;
    } while (idx < 0 || !s->streams[idx]);

    ogg = s->priv_data;
    os  = ogg->streams + idx;

    // pflags might not be set until after this
    pts = FUNC7(s, idx, &dts);
    FUNC10(s, idx, pstart, psize);

    if (os->keyframe_seek && !(os->pflags & AV_PKT_FLAG_KEY))
        goto retry;
    os->keyframe_seek = 0;

    //Alloc a pkt
    ret = FUNC3(pkt, psize);
    if (ret < 0)
        return ret;
    pkt->stream_index = idx;
    FUNC6(pkt->data, os->buf + pstart, psize);

    pkt->pts      = pts;
    pkt->dts      = dts;
    pkt->flags    = os->pflags;
    pkt->duration = os->pduration;
    pkt->pos      = fpos;

    if (os->end_trimming) {
        uint8_t *side_data = FUNC4(pkt,
                                                     AV_PKT_DATA_SKIP_SAMPLES,
                                                     10);
        if(!side_data)
            goto fail;
        FUNC1(side_data + 4, os->end_trimming);
        os->end_trimming = 0;
    }

    if (os->new_metadata) {
        uint8_t *side_data = FUNC4(pkt,
                                                     AV_PKT_DATA_METADATA_UPDATE,
                                                     os->new_metadata_size);
        if(!side_data)
            goto fail;

        FUNC6(side_data, os->new_metadata, os->new_metadata_size);
        FUNC2(&os->new_metadata);
        os->new_metadata_size = 0;
    }

    return psize;
fail:
    FUNC5(pkt);
    return FUNC0(ENOMEM);
}