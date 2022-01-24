#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_10__ {int sample_rate; int channels; int bits_per_coded_sample; int bit_rate; int block_align; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_IMA_APC ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;

    FUNC2(pb); /* CRYO */
    FUNC2(pb); /* _APC */
    FUNC2(pb); /* 1.20 */

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_IMA_APC;

    FUNC2(pb); /* number of samples */
    st->codecpar->sample_rate = FUNC2(pb);

    /* initial predictor values for adpcm decoder */
    if (FUNC3(s, st->codecpar, pb, 2 * 4) < 0)
        return FUNC0(ENOMEM);

    if (FUNC2(pb)) {
        st->codecpar->channels       = 2;
        st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    } else {
        st->codecpar->channels       = 1;
        st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    }

    st->codecpar->bits_per_coded_sample = 4;
    st->codecpar->bit_rate = (int64_t)st->codecpar->bits_per_coded_sample * st->codecpar->channels
                          * st->codecpar->sample_rate;
    st->codecpar->block_align = 1;

    return 0;
}