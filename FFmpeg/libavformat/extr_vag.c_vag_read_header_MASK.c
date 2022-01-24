#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {int duration; TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; int sample_rate; int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_PSX ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    AVStream *st;

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC6(s->pb, 4);
    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = AV_CODEC_ID_ADPCM_PSX;
    st->codecpar->channels    = 1 + (FUNC3(s->pb) == 0x00000004);
    FUNC6(s->pb, 4);
    if (st->codecpar->channels > 1) {
        st->duration       = FUNC3(s->pb);
    } else {
        st->duration       = FUNC3(s->pb) / 16 * 28;
    }
    st->codecpar->sample_rate = FUNC3(s->pb);
    if (st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;
    FUNC5(s->pb, 0x1000, SEEK_SET);
    if (FUNC4(s->pb) == FUNC1('V','A','G','p')) {
        st->codecpar->block_align = 0x1000 * st->codecpar->channels;
        FUNC5(s->pb, 0, SEEK_SET);
        st->duration = st->duration / 16 * 28;
    } else {
        st->codecpar->block_align = 16 * st->codecpar->channels;
        FUNC5(s->pb, st->codecpar->channels > 1 ? 0x80 : 0x30, SEEK_SET);
    }
    FUNC7(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}