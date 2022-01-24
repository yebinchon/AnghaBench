#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pb; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int channels; int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U16LE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U24LE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U32LE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    AVStream *st;
    int depth, length;

    FUNC5(s->pb, 4);
    while (!FUNC2(s->pb)) {
        if (FUNC3(s->pb) == 0x1a)
            break;
    }
    if (FUNC3(s->pb) != 1)
        return AVERROR_INVALIDDATA;
    length = FUNC3(s->pb);
    FUNC5(s->pb, length);
    FUNC5(s->pb, 4);
    depth = FUNC3(s->pb);

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels = 1;
    st->codecpar->sample_rate = FUNC4(s->pb);
    switch (depth) {
    case 8:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
        break;
    case 16:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U16LE;
        break;
    case 24:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U24LE;
        break;
    case 32:
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U32LE;
        break;
    default:
        return AVERROR_INVALIDDATA;
    }
    FUNC5(s->pb, 16);
    st->codecpar->block_align = depth / 8;

    return 0;
}