#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int codec_tag; int channels; unsigned int sample_rate; scalar_t__ codec_id; } ;
struct TYPE_12__ {TYPE_2__* pb; TYPE_1__** streams; } ;
struct TYPE_11__ {int seekable; } ;
struct TYPE_10__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVIO_SEEKABLE_NORMAL ; 
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_WAV ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    AVIOContext  *pb  = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;

    if (!par->codec_tag)
        return AVERROR_INVALIDDATA;

    if (par->channels != 1) {
        FUNC0(s, AV_LOG_ERROR, "RSO only supports mono\n");
        return AVERROR_INVALIDDATA;
    }

    if (!(s->pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        FUNC0(s, AV_LOG_ERROR, "muxer does not support non seekable output\n");
        return AVERROR_INVALIDDATA;
    }

    /* XXX: find legal sample rates (if any) */
    if (par->sample_rate >= 1u<<16) {
        FUNC0(s, AV_LOG_ERROR, "Sample rate must be < 65536\n");
        return AVERROR_INVALIDDATA;
    }

    if (par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV) {
        FUNC3(s, "ADPCM in RSO");
        return AVERROR_PATCHWELCOME;
    }

    /* format header */
    FUNC2(pb, par->codec_tag);   /* codec ID */
    FUNC2(pb, 0);                /* data size, will be written at EOF */
    FUNC2(pb, par->sample_rate);
    FUNC2(pb, 0x0000);           /* play mode ? (0x0000 = don't loop) */

    FUNC1(pb);

    return 0;
}