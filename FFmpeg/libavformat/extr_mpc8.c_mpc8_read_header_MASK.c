#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_28__ {TYPE_3__* pb; TYPE_1__* priv_data; } ;
struct TYPE_27__ {int seekable; } ;
struct TYPE_26__ {int duration; TYPE_10__* codecpar; scalar_t__ start_time; } ;
struct TYPE_25__ {int header_pos; int ver; int samples; int /*<<< orphan*/  apetag_start; } ;
struct TYPE_24__ {int bits_per_coded_sample; int channels; int* extradata; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_1__ MPCContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_MUSEPACK8 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TAG_MPCK ; 
 int TAG_STREAMHDR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,TYPE_10__*,TYPE_3__*,int) ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int,int,int) ; 
 int /*<<< orphan*/ * mpc8_rate ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s)
{
    MPCContext *c = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;
    int tag = 0;
    int64_t size, pos;

    c->header_pos = FUNC8(pb);
    if(FUNC5(pb) != TAG_MPCK){
        FUNC1(s, AV_LOG_ERROR, "Not a Musepack8 file\n");
        return AVERROR_INVALIDDATA;
    }

    while(!FUNC3(pb)){
        pos = FUNC8(pb);
        FUNC14(pb, &tag, &size);
        if (size < 0) {
            FUNC1(s, AV_LOG_ERROR, "Invalid chunk length\n");
            return AVERROR_INVALIDDATA;
        }
        if(tag == TAG_STREAMHDR)
            break;
        FUNC15(s, tag, pos, size);
    }
    if(tag != TAG_STREAMHDR){
        FUNC1(s, AV_LOG_ERROR, "Stream header not found\n");
        return AVERROR_INVALIDDATA;
    }
    pos = FUNC8(pb);
    FUNC7(pb, 4); //CRC
    c->ver = FUNC4(pb);
    if(c->ver != 8){
        FUNC9(s, "Stream version %d", c->ver);
        return AVERROR_PATCHWELCOME;
    }
    c->samples = FUNC13(pb);
    FUNC13(pb); //silence samples at the beginning

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_MUSEPACK8;
    st->codecpar->bits_per_coded_sample = 16;

    if (FUNC12(s, st->codecpar, pb, 2) < 0)
        return FUNC0(ENOMEM);

    st->codecpar->channels = (st->codecpar->extradata[1] >> 4) + 1;
    st->codecpar->sample_rate = mpc8_rate[st->codecpar->extradata[0] >> 5];
    FUNC10(st, 32, 1152  << (st->codecpar->extradata[1]&3)*2, st->codecpar->sample_rate);
    st->start_time = 0;
    st->duration = c->samples / (1152 << (st->codecpar->extradata[1]&3)*2);
    size -= FUNC8(pb) - pos;
    if (size > 0)
        FUNC7(pb, size);

    if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t pos = FUNC8(s->pb);
        c->apetag_start = FUNC11(s);
        FUNC6(s->pb, pos, SEEK_SET);
    }

    return 0;
}