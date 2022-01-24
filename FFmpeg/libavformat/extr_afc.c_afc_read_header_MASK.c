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
struct TYPE_12__ {int channels; int* extradata; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_11__ {void* data_end; } ;
struct TYPE_10__ {int /*<<< orphan*/  pb; TYPE_3__* priv_data; } ;
struct TYPE_9__ {TYPE_4__* codecpar; void* duration; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AFCDemuxContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_AFC ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    AFCDemuxContext *c = s->priv_data;
    AVStream *st;

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id   = AV_CODEC_ID_ADPCM_AFC;
    st->codecpar->channels   = 2;
    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;

    if (FUNC6(st->codecpar, 1))
        return FUNC0(ENOMEM);
    st->codecpar->extradata[0] = 8 * st->codecpar->channels;

    c->data_end = FUNC3(s->pb) + 32LL;
    st->duration = FUNC3(s->pb);
    st->codecpar->sample_rate = FUNC2(s->pb);
    FUNC4(s->pb, 22);
    FUNC5(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}