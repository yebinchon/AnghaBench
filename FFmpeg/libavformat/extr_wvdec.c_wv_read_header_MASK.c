#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_19__ {int total_samples; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  samples; } ;
struct TYPE_20__ {int /*<<< orphan*/  apetag_start; TYPE_2__ header; int /*<<< orphan*/  rate; int /*<<< orphan*/  bpp; int /*<<< orphan*/  chmask; int /*<<< orphan*/  chan; scalar_t__ block_parsed; } ;
typedef  TYPE_3__ WVContext ;
struct TYPE_23__ {TYPE_5__* pb; int /*<<< orphan*/  metadata; TYPE_3__* priv_data; } ;
struct TYPE_22__ {int seekable; } ;
struct TYPE_21__ {int duration; scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_18__ {int /*<<< orphan*/  bits_per_coded_sample; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  channels; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_WAVPACK ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WVContext *wc = s->priv_data;
    AVStream *st;
    int ret;

    wc->block_parsed = 0;
    for (;;) {
        if ((ret = FUNC9(s, pb)) < 0)
            return ret;
        if (!wc->header.samples)
            FUNC4(pb, wc->header.blocksize);
        else
            break;
    }

    /* now we are ready: build format streams */
    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    st->codecpar->codec_type            = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id              = AV_CODEC_ID_WAVPACK;
    st->codecpar->channels              = wc->chan;
    st->codecpar->channel_layout        = wc->chmask;
    st->codecpar->sample_rate           = wc->rate;
    st->codecpar->bits_per_coded_sample = wc->bpp;
    FUNC6(st, 64, 1, wc->rate);
    st->start_time = 0;
    if (wc->header.total_samples != 0xFFFFFFFFu)
        st->duration = wc->header.total_samples;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t cur = FUNC5(s->pb);
        wc->apetag_start = FUNC7(s);
        if (!FUNC1(s->metadata, "", NULL, AV_DICT_IGNORE_SUFFIX))
            FUNC8(s);
        FUNC3(s->pb, cur, SEEK_SET);
    }

    return 0;
}