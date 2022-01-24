#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_20__ {TYPE_3__* priv_data; } ;
struct TYPE_19__ {TYPE_9__* codecpar; TYPE_2__* internal; int /*<<< orphan*/  need_parsing; } ;
struct TYPE_18__ {TYPE_11__* bsf; int /*<<< orphan*/  framerate; } ;
struct TYPE_17__ {TYPE_1__* avctx; } ;
struct TYPE_16__ {int /*<<< orphan*/  framerate; } ;
struct TYPE_15__ {int /*<<< orphan*/  par_in; } ;
typedef  TYPE_3__ AnnexBContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVBitStreamFilter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_HEADERS ; 
 int /*<<< orphan*/  AV_CODEC_ID_AV1 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_11__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__**) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 TYPE_4__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    AnnexBContext *c = s->priv_data;
    const AVBitStreamFilter *filter = FUNC3("av1_frame_merge");
    AVStream *st;
    int ret;

    if (!filter) {
        FUNC5(c, AV_LOG_ERROR, "av1_frame_merge bitstream filter "
               "not found. This is a bug, please report it.\n");
        return AVERROR_BUG;
    }

    st = FUNC7(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_AV1;
    st->need_parsing = AVSTREAM_PARSE_HEADERS;

    st->internal->avctx->framerate = c->framerate;
    // taken from rawvideo demuxers
    FUNC8(st, 64, 1, 1200000);

    ret = FUNC1(filter, &c->bsf);
    if (ret < 0)
        return ret;

    ret = FUNC6(c->bsf->par_in, st->codecpar);
    if (ret < 0) {
        FUNC2(&c->bsf);
        return ret;
    }

    ret = FUNC4(c->bsf);
    if (ret < 0)
        FUNC2(&c->bsf);

    return ret;
}