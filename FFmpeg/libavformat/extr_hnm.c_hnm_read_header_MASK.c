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
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_11__ {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int width; int height; int version; scalar_t__ currentframe; void* framesize; void* channels; void* bits; void* taboffset; void* frames; void* filesize; scalar_t__ superchunk_remaining; TYPE_10__ vpkt; scalar_t__ pts; } ;
struct TYPE_12__ {int width; int height; int extradata_size; int /*<<< orphan*/  extradata; scalar_t__ codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ Hnm4DemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_HNM4_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  HNM4_FRAME_FPS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    Hnm4DemuxContext *hnm = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *vst;

    /* default context members */
    hnm->pts = 0;
    FUNC1(&hnm->vpkt);
    hnm->vpkt.data = NULL;
    hnm->vpkt.size = 0;

    hnm->superchunk_remaining = 0;

    FUNC7(pb, 8);
    hnm->width     = FUNC5(pb);
    hnm->height    = FUNC5(pb);
    hnm->filesize  = FUNC6(pb);
    hnm->frames    = FUNC6(pb);
    hnm->taboffset = FUNC6(pb);
    hnm->bits      = FUNC5(pb);
    hnm->channels  = FUNC5(pb);
    hnm->framesize = FUNC6(pb);
    FUNC7(pb, 32);

    hnm->currentframe = 0;

    if (hnm->width  < 256 || hnm->width  > 640 ||
        hnm->height < 150 || hnm->height > 480) {
        FUNC2(s, AV_LOG_ERROR,
               "invalid resolution: %ux%u\n", hnm->width, hnm->height);
        return AVERROR_INVALIDDATA;
    }

    // TODO: find a better way to detect HNM4A
    if (hnm->width == 640)
        hnm->version = 0x4a;
    else
        hnm->version = 0x40;

    if (!(vst = FUNC4(s, NULL)))
        return FUNC0(ENOMEM);

    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vst->codecpar->codec_id   = AV_CODEC_ID_HNM4_VIDEO;
    vst->codecpar->codec_tag  = 0;
    vst->codecpar->width      = hnm->width;
    vst->codecpar->height     = hnm->height;
    vst->codecpar->extradata  = FUNC3(1);

    vst->codecpar->extradata_size = 1;
    FUNC9(vst->codecpar->extradata, &hnm->version, 1);

    vst->start_time = 0;

    FUNC8(vst, 33, 1, HNM4_FRAME_FPS);

    return 0;
}