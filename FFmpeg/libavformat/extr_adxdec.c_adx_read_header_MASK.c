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
typedef  long long int64_t ;
struct TYPE_15__ {int header_size; } ;
struct TYPE_14__ {int extradata_size; long long channels; scalar_t__ sample_rate; long long bit_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; scalar_t__ extradata; } ;
struct TYPE_13__ {TYPE_2__* iformat; int /*<<< orphan*/  pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  raw_codec_id; } ;
struct TYPE_11__ {TYPE_4__* codecpar; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;
typedef  TYPE_5__ ADXDemuxerContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 long long FUNC2 (scalar_t__) ; 
 long long BLOCK_SAMPLES ; 
 long long BLOCK_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,long long,long long) ; 
 scalar_t__ FUNC8 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    ADXDemuxerContext *c = s->priv_data;
    AVCodecParameters *par;

    AVStream *st = FUNC4(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    par = s->streams[0]->codecpar;

    if (FUNC5(s->pb) != 0x8000)
        return AVERROR_INVALIDDATA;
    c->header_size = FUNC5(s->pb) + 4;
    FUNC6(s->pb, -4, SEEK_CUR);

    if (FUNC8(s, par, s->pb, c->header_size) < 0)
        return FUNC0(ENOMEM);

    if (par->extradata_size < 12) {
        FUNC3(s, AV_LOG_ERROR, "Invalid extradata size.\n");
        return AVERROR_INVALIDDATA;
    }
    par->channels    = FUNC2 (par->extradata + 7);
    par->sample_rate = FUNC1(par->extradata + 8);

    if (par->channels <= 0) {
        FUNC3(s, AV_LOG_ERROR, "invalid number of channels %d\n", par->channels);
        return AVERROR_INVALIDDATA;
    }

    if (par->sample_rate <= 0) {
        FUNC3(s, AV_LOG_ERROR, "Invalid sample rate %d\n", par->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    par->codec_type  = AVMEDIA_TYPE_AUDIO;
    par->codec_id    = s->iformat->raw_codec_id;
    par->bit_rate    = (int64_t)par->sample_rate * par->channels * BLOCK_SIZE * 8LL / BLOCK_SAMPLES;

    FUNC7(st, 64, BLOCK_SAMPLES, par->sample_rate);

    return 0;
}