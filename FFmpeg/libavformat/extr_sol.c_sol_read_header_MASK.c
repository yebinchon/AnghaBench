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
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_10__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {unsigned int codec_tag; int codec_id; unsigned int channels; unsigned int sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int AV_CODEC_ID_SOL_DPCM ; 
 unsigned int FUNC0 (char,char,char,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,unsigned int) ; 
 int FUNC8 (unsigned int,unsigned int) ; 
 unsigned int FUNC9 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    unsigned int magic,tag;
    AVIOContext *pb = s->pb;
    unsigned int id, channels, rate, type;
    enum AVCodecID codec;
    AVStream *st;

    /* check ".snd" header */
    magic = FUNC3(pb);
    tag = FUNC4(pb);
    if (tag != FUNC0('S', 'O', 'L', 0))
        return -1;
    rate = FUNC3(pb);
    type = FUNC2(pb);
    FUNC5(pb, 4); /* size */
    if (magic != 0x0B8D)
        FUNC2(pb); /* newer SOLs contain padding byte */

    codec = FUNC8(magic, type);
    channels = FUNC7(magic, type);

    if (codec == AV_CODEC_ID_SOL_DPCM)
        id = FUNC9(magic, type);
    else id = 0;

    /* now we are ready: build format streams */
    st = FUNC1(s, NULL);
    if (!st)
        return -1;
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_tag = id;
    st->codecpar->codec_id = codec;
    st->codecpar->channels = channels;
    st->codecpar->channel_layout = channels == 1 ? AV_CH_LAYOUT_MONO :
                                                   AV_CH_LAYOUT_STEREO;
    st->codecpar->sample_rate = rate;
    FUNC6(st, 64, 1, rate);
    return 0;
}