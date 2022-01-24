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
struct TYPE_9__ {TYPE_1__* codecpar; int /*<<< orphan*/  duration; } ;
struct TYPE_8__ {int sample_rate; int channels; int bits_per_coded_sample; int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_ALAW ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    AVStream *st;

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC4(s->pb, 18);
    st->duration           = FUNC3(s->pb);
    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = AV_CODEC_ID_PCM_ALAW;
    st->codecpar->sample_rate = 8000;
    st->codecpar->channels    = 1;
    st->codecpar->bits_per_coded_sample = FUNC1(st->codecpar->codec_id);
    st->codecpar->block_align = st->codecpar->bits_per_coded_sample * st->codecpar->channels / 8;
    FUNC5(st, 64, 1, st->codecpar->sample_rate);
    FUNC4(s->pb, 10);

    return 0;
}